import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/features/rtv/presentation/widgets/bp_selected_widget.dart';
import 'package:minerva/features/rtv/presentation/widgets/product_selection_widget.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:minerva/toast_message.dart';

class NewShipmentForm extends StatefulWidget {
  const NewShipmentForm({Key? key}) : super(key: key);

  @override
  _NewShipmentFormState createState() => _NewShipmentFormState();
}

class _NewShipmentFormState extends State<NewShipmentForm> {
  ShipmentForm _form = ShipmentForm.initial();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New RTV Shipment'),
        elevation: 0.0,
        titleSpacing: 0,
        actions: [
          BlocConsumer<NewShipmentBloc, NewShipmentState>(
            listener: (ctx, state) {
              state.maybeWhen(
                failure: (f) =>
                    toastMessage(errorMessage: f.error, context: context),
                success: () => _showSuccessDialog(),
                orElse: () {},
              );
            },
            builder: (ctx, state) {
              return state.when(
                initial: () => _buildCreateButton(context),
                loading: () => const LoadingIndicator(),
                success: () => const SizedBox(height: 0, width: 0),
                failure: (f) => _buildCreateButton(context),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BpSelectionWidget(
            onSelected: (f) {
              _form = _form.copyWith(businessPartnerId: f.id);
                BlocProvider.of<FetchProductBloc>(context).add(
                    FetchProductEvent.fetchInitialProduct(
                        _form.businessPartnerId));
            },
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: OutlinedButton.icon(
              onPressed: () {
                _openProductSelection();
              },
              icon: const Icon(Icons.add),
              label: const Text('Add Product'),
            ),
          ),
          const SizedBox(height: 8),
          _buildProductList(),
        ],
      ),
    );
  }

  Container _buildCreateButton(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          BlocProvider.of<NewShipmentBloc>(context)
              .add(NewShipmentEvent.createShipment(_form));
        },
        child: const Text("CREATE"),
      ),
    );
  }

  Widget _buildProductList() {
    return Expanded(
      child: ListView.separated(
        itemCount: _form.products.length,
        separatorBuilder: (ctx, idx) => const Divider(),
        itemBuilder: (ctx, idx) {
          final record = _form.products[idx];
          return ListTile(
            title: Text(record.productName),
            subtitle: Text(record.movementQty.toString()),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _form.products.removeWhere(
                      (element) => element.productId == record.productId);
                });
              },
            ),
          );
        },
      ),
    );
  }

  void _openProductSelection() {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return BlocProvider.value(
        value: BlocProvider.of<FetchProductBloc>(context),
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

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Colors.greenAccent.shade100,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          title: const Text('Success'),
          content: Text(
            'Shipment created successfully',
            textAlign: TextAlign.center,
            maxLines: 3,
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Okay. Close the dialog'),
            ),
          ],
        );
      },
    ).then((value) {
      Navigator.of(context).pop(value);
    });
  }
}
