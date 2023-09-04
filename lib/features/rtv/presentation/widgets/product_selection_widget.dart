import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/features/rtv/presentation/bloc/fetch_product_category/fetch_product_category_bloc.dart';
import 'package:minerva/features/rtv/presentation/widgets/quantity_dialog.dart';
import 'package:minerva/features/rtv/presentation/widgets/category_selecter_alertdialog.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class ProductSelectionWidget extends StatefulWidget {
  const ProductSelectionWidget({
    Key? key,
    required this.onProductSelected,
    required this.bpId,
  }) : super(key: key);

  final String bpId;
  final Function(ShipmentFormLine product) onProductSelected;

  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _ProductSelectionWidgetState createState() => _ProductSelectionWidgetState();
}

class _ProductSelectionWidgetState extends State<ProductSelectionWidget> {
  String? _query;

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
      final curState = BlocProvider.of<FetchProductBloc>(context).state;

      curState.maybeWhen(
        success: (pr, hasReachedMax, __) {
          if (!hasReachedMax) {
            BlocProvider.of<FetchProductBloc>(context).add(
                FetchProductEvent.fetchMoreProduct(
                    query: QueryController.text,
                    searchquery: QueryController.text,
                    selectedCategorysquery: QueryController.text));
          }
        },
        orElse: () {},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GoBackIcon(icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'Select Product',
          style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        iconTheme: const IconThemeData(
          size: 30,
        ),
      ),
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
                    onChanged: (value) {
                      print(value);
                      BlocProvider.of<FetchProductBloc>(context).add(
                          FetchProductEvent.fetchInitialProduct(
                              searchquery: value));
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15),
                      hintText: "Search",
                      suffixIcon: const Icon(Icons.search),
                      // prefix: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return BlocProvider.value(
                            value: sl.get<FetchProductCategoryBloc>()
                              ..add(const FetchProductCategoryEvent
                                  .fetchInitialProductCategory()),
                            child: CategorySelecter(
                              fetchProductBlocContext: context,
                            ),
                          );
                        },
                      );
                      // showDialog(
                      //     context: context,
                      //     builder: (context) {
                      //       return CategorySelecter(
                      //         fetchProductBlocContext: context,
                      //       );
                      //     });
                    },
                    icon: const Icon(
                      Icons.filter_list,
                      size: 32,
                    )),
                IconButton(
                    onPressed: () {
                      scanBarcode();
                    },
                    icon: const Icon(
                      Icons.qr_code_scanner_rounded,
                      size: 32,
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: BlocBuilder<FetchProductBloc, FetchProductState>(
                builder: (ctx, state) {
                  return state.when(
                    initial: () => const LoadingIndicator(),
                    loading: () => const LoadingIndicator(),
                    success: (products, hasReachedMax, __) =>
                        _buildList(products, hasReachedMax),
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
    BlocProvider.of<FetchProductBloc>(context)
        .add(FetchProductEvent.fetchInitialProduct());
  }

  Widget _buildList(List<Product> products, bool hasReachedMax) {
    return ListView.separated(
      shrinkWrap: true,
      controller: _scrollController,
      itemCount: hasReachedMax ? products.length : products.length + 1,
      separatorBuilder: (ctx, idx) => const Divider(),
      itemBuilder: (ctx, idx) {
        if (idx >= products.length) return LoadingIndicator();
        final product = products[idx];
        return ListTile(
          title: Text(product.name),
          subtitle: Text(product.uomName),
          onTap: () => _askForQuantity(context, product),
        );
      },
    );
  }

  void _askForQuantity(BuildContext context, Product product) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => QuantityDialog(
        product: product,
        context: context,
        onCancel: (onCancel) {},
        enteredQunatity: (String entered) {
          setState(() {
            final double enteredQty = double.parse(entered);
            widget.onProductSelected(ShipmentFormLine(
              productId: product.id,
              productName: product.name,
              uomId: product.uomId,
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
    try {
      final barCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);

      if (!mounted) return;
      bool ismione = true;
      if (barCode == "-1") {
        ismione = false;
      } else {
        ismione = true;
      }
      String finalbarCode = ismione ? barCode : '';
      BlocProvider.of<FetchProductBloc>(context).add(
          FetchProductEvent.fetchInitialProduct(barcodequery: finalbarCode));
      print("BarCode_Result:-- $barCode");

      print("FinalBarCode_Result:-- $finalbarCode");
    } on PlatformException {
      print('Failed to scan QR Code.');
    }
  }
}
