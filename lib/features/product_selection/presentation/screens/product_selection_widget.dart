import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/product_selection/domain/entity/form_line.dart';
import 'package:minerva/features/product_selection/domain/entity/product.dart';
import 'package:minerva/features/product_selection/presentation/bloc/fetch_product/fetch_product_bloc.dart';
import 'package:minerva/features/product_selection/presentation/bloc/fetch_product_category/fetch_product_category_bloc.dart';
import 'package:minerva/features/product_selection/presentation/widgets/category_selecter_alertdialog.dart';
import 'package:minerva/features/product_selection/presentation/widgets/quantity_dialog.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:widgets/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class ProductSelectionWidget extends StatefulWidget {
  const ProductSelectionWidget({
    Key? key,
    required this.onProductSelected,
    required this.bpId,
  }) : super(key: key);

  final String bpId;
  final Function(FormLine product) onProductSelected;

  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _ProductSelectionWidgetState createState() => _ProductSelectionWidgetState();
}

class _ProductSelectionWidgetState extends State<ProductSelectionWidget> {
  // String? _query;
  Timer? _debounce;

  final QueryController = TextEditingController();

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      BlocProvider.of<FetchProductBloc>(context)
          .add(FetchProductEvent.fetchMoreProduct(
        query: QueryController.text,
        selectedCategorys: fetchSelectedCategories(),
      ));
    }
  }

  List<String> fetchSelectedCategories() {
    final curState = BlocProvider.of<FetchProductBloc>(context).state;
    final categories = curState.maybeWhen(
      orElse: () => <String>[],
      success: (records, hasReachedMax, categories, query, barCode) =>
          categories,
    );
    return categories;
  }

  void onSearch(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      final cats = fetchSelectedCategories();
      BlocProvider.of<FetchProductBloc>(context)
          .add(FetchProductEvent.fetchInitialProduct(
        query: query,
        selectedCategorys: cats,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          SimpleAppBar(height: 60, title: "Select Products", centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: TextField(
                    controller: QueryController,
                    onChanged: (value) => onSearch(value),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15,
                      ),
                      hintText: "Search",
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 29,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        // borderSide: const BorderSide(style: BorderStyle.solid),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        final cats = fetchSelectedCategories();
                        return MultiBlocProvider(
                          providers: [
                            BlocProvider.value(
                              value: sl.get<FetchProductCategoryBloc>()
                                ..add(const FetchProductCategoryEvent
                                    .fetchInitialProductCategory()),
                            ),
                            BlocProvider(
                              create: (ctx) => sl.get<FetchProductBloc>(),
                            ),
                          ],
                          child: CategorySelecter(
                            fetchedCategories: cats,
                          ),
                        );
                      },
                    ).then((value) {
                      if (value is List<String>) {
                        if (value.isNotEmpty) {
                          BlocProvider.of<FetchProductBloc>(context).add(
                              FetchProductEvent.fetchInitialProduct(
                                  selectedCategorys: value));
                        }
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.filter_list,
                    size: 32,
                  ),
                ),
                IconButton(
                  onPressed: () => scanBarcode(),
                  icon: const Icon(
                    Icons.qr_code_scanner_rounded,
                    size: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: BlocConsumer<FetchProductBloc, FetchProductState>(
                listener: (ctx, state) {
                  state.maybeWhen(
                    orElse: () {},
                    success: (records, hasReachedMax, categories, query,
                        barCode) async {
                      if (barCode != null &&
                          barCode.isNotEmpty &&
                          records.isNotEmpty) {
                        _askForQuantity(context, records.first);
                      }
                    },
                  );
                },
                builder: (ctx, state) {
                  return state.when(
                    initial: () => LoadingIndicator(),
                    loading: () => LoadingIndicator(),
                    success: (products, hasReachedMax, ___, __, _) =>
                        products.isEmpty
                            ? Center(
                                child: AppErrorWidget(
                                  error: "Product not found !",
                                  onRefresh: () => _refresh(context),
                                ),
                              )
                            : _buildList(products, hasReachedMax),
                    failure: (f) => AppErrorWidget(
                      error: f.error,
                      onRefresh: () => _refresh(context),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _refresh(Object buildContext) {
    BlocProvider.of<FetchProductBloc>(context).add(
        FetchProductEvent.fetchInitialProduct(query: QueryController.text));
  }

  Widget _buildList(List<Product> products, bool hasReachedMax) {
    return ListView.builder(
      shrinkWrap: true,
      controller: _scrollController,
      itemCount: hasReachedMax ? products.length : products.length + 1,
      itemBuilder: (ctx, idx) {
        if (idx >= products.length) return LoadingIndicator();
        final product = products[idx];
        return Card(
          child: ListTile(
            title: Text(product.name),
            subtitle: Text(product.productCategoryName),
            trailing: Text(product.uomName),
            onTap: () {
              _askForQuantity(context, product);
            },
          ),
        );
      },
    );
  }

  Future<void> _askForQuantity(BuildContext context, Product product) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => QuantityDialog(
        product: product,
        context: context,
        onCancel: (onCancel) {},
        enteredQunatity: (String entered) {
          setState(() {
            final double enteredQty = double.parse(entered);
            widget.onProductSelected(FormLine(
              productId: product.id,
              productName: product.name,
              uomId: product.uomId,
              uomName: product.uomName,
              movementQty: enteredQty,
            ));
          });
        },
      ),
    ).then((value) {
      Navigator.of(context).pop();
    });
  }

  Future<void> scanBarcode() async {
    final barCode = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.BARCODE,
    );
    if (!mounted) return;
    if (barCode != "-1") {
      BlocProvider.of<FetchProductBloc>(context)
          .add(FetchProductEvent.fetchInitialProduct(barCode: barCode));
    }
  }
}