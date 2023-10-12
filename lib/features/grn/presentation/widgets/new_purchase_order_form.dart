import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/grn/domain/entities/PurchaseOrder_form.dart';
import 'package:minerva/features/grn/presentation/blocs/new_purchase_order/new_purchase_order_bloc.dart';
import 'package:minerva/features/product_selection/domain/entity/form_line.dart';
import 'package:minerva/features/product_selection/presentation/bloc/fetch_product/fetch_product_bloc.dart';
import 'package:minerva/features/product_selection/presentation/bloc/fetch_product_category/fetch_product_category_bloc.dart';
import 'package:minerva/features/product_selection/presentation/screens/product_selection_widget.dart';
import 'package:minerva/features/product_selection/presentation/widgets/edite_quantity_dialog.dart';
import 'package:widgets/success_dialog.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/toast_message.dart';
import 'package:widgets/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class NewPurchaseOrderForm extends StatefulWidget {
  const NewPurchaseOrderForm({Key? key}) : super(key: key);

  @override
  State<NewPurchaseOrderForm> createState() => _NewPurchaseOrderFormState();
}

class _NewPurchaseOrderFormState extends State<NewPurchaseOrderForm> {
  PurchaseOrderForm _form = PurchaseOrderForm.initial();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        height: 60,
        title: "NEW Purchase Order",
        centerTitle: true,
      ),
      body: _form.products.isEmpty
          ? Center(
              child: Text(
                "Add products to crate Purchase order !",
                style: GoogleFonts.istokWeb(
                    textStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold)),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4, left: 4),
                    child: Text(
                      _form.products.length == 1
                          ? "Selected Product"
                          : "Selected Products",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  _buildProductList(),
                ],
              ),
            ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            OutlinedButton.icon(
              onPressed: () => _openProductSelection(),
              icon: const Icon(Icons.add),
              label: Text(
                'Add Product'.toUpperCase(),
              ),
            ),
            BlocConsumer<NewPurchaseOrderBloc, NewPurchaseOrderState>(
              listener: (ctx, state) {
                state.maybeWhen(
                  failure: (f) {
                    //  print("failure");
                    toastMessage(errorMessage: f.error, context: context);
                  },
                  success: () => _showSuccessDialog(),
                  orElse: () {
                    // print("orElse");
                  },
                );
              },
              builder: (ctx, state) {
                return state.when(
                  initial: () => _buildCreateButton(context),
                  loading: () => Container(
                    width: 120,
                    child: Center(
                      child: LoadingIndicator(),
                    ),
                  ),
                  success: () => const SizedBox(height: 0, width: 0),
                  failure: (f) => _buildCreateButton(context),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _buildCreateButton(BuildContext context) {
    return SizedBox(
      width: 120,
      // padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          print('HIHIH');
          print('_form $_form');
          BlocProvider.of<NewPurchaseOrderBloc>(context)
              .add(NewPurchaseOrderEvent.createPurchaseOrder(_form));
        },
        child: const Text("CREATE"),
      ),
    );
  }

  Widget _buildProductList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _form.products.length,
        itemBuilder: (ctx, idx) {
          final record = _form.products[idx];
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ListTile(
                contentPadding: const EdgeInsets.all(2),
                title: Text(record.productName),
                subtitle:
                    Text("${record.movementQty.toString()}  ${record.uomName}"),
                trailing: SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              _form = _form.copyWith(
                                products: _form.products
                                    .where((element) =>
                                        element.productId != record.productId)
                                    .toList(),
                              );
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            _quantityEditDialog(record);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _openProductSelection() {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: BlocProvider.of<FetchProductBloc>(context)
              ..add(const FetchProductEvent.fetchInitialProduct()),
          ),
          BlocProvider(
              create: (ctx) => sl.get<FetchProductCategoryBloc>()
                ..add(const FetchProductCategoryEvent
                    .fetchInitialProductCategory())),
        ],
        child: ProductSelectionWidget(
          bpId: _form.businessPartnerId,
          onProductSelected: (product) async {
            final pr = _form.products
                .where((element) => element.productId == product.productId);
            if (pr.isEmpty) {
              setState(() {
                _form = _form.copyWith(products: [product, ..._form.products]);
              });
            }
          },
        ),
      );
    }));
  }

  void _quantityEditDialog(FormLine record) {
    showDialog(
      context: context,
      builder: (BuildContext context) => EditeQuantityDialog(
        record: record,
        onQuantityUpdated: (newQty) {
          setState(() {
            // Create a copy of the old record with the updated quantity
            FormLine updatedRecord = FormLine(
              productId: record.productId,
              productName: record.productName,
              uomId: record.uomId,
              uomName: record.uomName,
              movementQty: newQty,
            );

            // Create a copy of the _form object with the updated record
            List<FormLine> updatedProducts = List.from(_form.products);
            int index = updatedProducts
                .indexWhere((element) => element.productId == record.productId);
            if (index != -1) {
              updatedProducts[index] = updatedRecord;
            }

            _form = _form.copyWith(products: updatedProducts);
          });
        },
      ),
    );
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return const ShowSuccessDialog(
          buttonText: "Okey",
          description: 'RTV Shipment created successfully !',
          title: "Success",
        );
      },
    ).then((value) {
      Navigator.of(context).pop(true);
    });
  }
}
