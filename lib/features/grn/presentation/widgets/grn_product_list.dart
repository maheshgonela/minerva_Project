import 'package:flutter/material.dart';
import 'package:minerva/features/grn/domain/entities/grn_item_ui_model.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';
import 'package:minerva/features/grn/presentation/widgets/grn_product_card.dart';

class GrnProductList extends StatefulWidget {
  final List<OrderedProduct> records;
  final List<GrnItemUiModel> grnProducts;

  const GrnProductList({
    Key? key,
    required this.records,
    required this.grnProducts,
  }) : super(key: key);

  @override
  _GrnProductListState createState() => _GrnProductListState();
}

class _GrnProductListState extends State<GrnProductList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, index) {
        var product = widget.records[index];

        final List<GrnItemUiModel> p = widget.grnProducts
            .where((element) => element.product.id == product.id)
            .toList();

        // print(p);

        if (p.isNotEmpty) {
          product = p[0].product;
        }

        return GrnProductCard(product: product);
      },
      itemCount: widget.records.length,
    );
  }
}
