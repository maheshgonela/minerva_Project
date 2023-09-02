import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/features/rtv/presentation/bloc/fetch_product_category/fetch_product_category_bloc.dart';
import 'package:minerva/features/rtv/presentation/widgets/bp_selected_widget.dart';
import 'package:minerva/features/rtv/presentation/widgets/product_selection_widget.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:minerva/toast_message.dart';
import 'package:widgets/widgets.dart';

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
        leading: GoBackIcon(icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'New RTV Shipment',
          style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        iconTheme: const IconThemeData(
          size: 30,
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BpSelectionWidget(
              onSelected: (f) {
                BlocProvider.of<FetchProductBloc>(context)
                    .add(FetchProductEvent.fetchInitialProduct());
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
                label: Text(
                  'Add Product'.toUpperCase(),
                  // style: GoogleFonts.istokWeb(
                  //     textStyle: Theme.of(context)
                  //         .textTheme
                  //         .titleMedium!
                  //         .copyWith(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            const SizedBox(height: 8),
            _buildProductList(),
          ],
        ),
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
                  _form = _form.copyWith(
                    products: _form.products
                        .where(
                            (element) => element.productId != record.productId)
                        .toList(),
                  );
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
      return MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: BlocProvider.of<FetchProductBloc>(context)
              ..add(FetchProductEvent.fetchInitialProduct()),
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
