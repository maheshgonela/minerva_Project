import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/core/widgets/search_bar.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/features/rtv/presentation/widgets/quantity_dialog.dart';
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
  _ProductSelectionWidgetState createState() => _ProductSelectionWidgetState();
}

class _ProductSelectionWidgetState extends State<ProductSelectionWidget> {
  String? _query;
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
            BlocProvider.of<FetchProductBloc>(context)
                .add(FetchProductEvent.fetchMoreProduct());
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
      body: BlocBuilder<FetchProductBloc, FetchProductState>(
        builder: (ctx, state) {
          return state.when(
            initial: () => const LoadingIndicator(),
            loading: () => const LoadingIndicator(),
            success: (products, hasReachedMax, __) =>
                _buildList(products, hasReachedMax),
            failure: (f) => AppErrorWidget(
              error: f.error,
              onRefresh: () => _refresh(),
            ),
          );
        },
      ),
    );
  }

  AppSearchBar _buildAppSearchBar() {
    return AppSearchBar(
      height: 80,
      hintText: 'Search by product name',
      onSearch: (query) {
        _query = query;
        _refresh();
      },
      onCancel: () {
        _query = '';
        _refresh();
      },
    );
  }

  void _refresh() {
    BlocProvider.of<FetchProductBloc>(context)
        .add(FetchProductEvent.fetchInitialProduct());
  }

  Widget _buildList(List<Product> products, bool hasReachedMax) {
    return ListView.separated(
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
}
