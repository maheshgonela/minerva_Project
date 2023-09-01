import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_info_wrapper.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/widgets/dispatch_product_card.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:minerva/toast_message.dart';

class DispatchProductList extends StatefulWidget {
  final SalesOrder order;
  final List<DispatchOrderedProduct> records;

  const DispatchProductList({
    Key? key,
    required this.records,
    required this.order,
  }) : super(key: key);

  @override
  _DispatchProductListState createState() => _DispatchProductListState();
}

class _DispatchProductListState extends State<DispatchProductList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 8),
          BlocBuilder<CreateDispatchCubit, CreateDispatchState>(
            builder: (ctx, state) {
              return _buildUserInputWidgets(state, context);
            },
          ),
          const SizedBox(height: 8),
          BlocConsumer<CreateDispatchCubit, CreateDispatchState>(
            listener: (ctx, state) {
              if (state.errorMessage.isNotEmpty) {
                toastMessage(context: ctx, errorMessage: state.errorMessage);
              }
            },
            builder: (ctx, state) {
              final list = state.dispatchOrders
                  .where((element) => element.order.id == widget.order.id)
                  .toList();
              if (list.isEmpty) {
                return const SizedBox(width: 0, height: 0);
              }

              final info = list[0];

              return Row(
                children: [
                  _buildScanOption(),
                  const SizedBox(width: 8),
                  Chip(
                    label: Text(sl.get<LoggedInUser>().name),
                    avatar: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('D'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Chip(
                    label: Text('${info.dispatchItems.length}'),
                    avatar: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('P'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Chip(
                      label: Text(info.totalQty.toStringAsFixed(3)),
                      avatar: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text('Q'),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 8),
          Expanded(
            child: BlocBuilder<CreateDispatchCubit, CreateDispatchState>(
              builder: (ctx, state) {
                final DispatchInfoWrapper singleWhere = state.dispatchOrders
                    .singleWhere(
                        (element) => element.order.id == widget.order.id);

                return GroupedListView<DispatchOrderedProduct, String>(
                  elements: singleWhere.allProducts,
                  groupBy: (element) => element.subCategory,
                  groupSeparatorBuilder: (String groupByValue) => Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      // color: const Color(0xffeceff1),
                      border: Border.all(),
                    ),
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(groupByValue,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold, letterSpacing: 1.5)),
                  ),
                  indexedItemBuilder: (context, element, index) {
                    return DispatchProductCard(
                      product: element,
                      order: widget.order,
                    );
                  },
                  useStickyGroupSeparators: true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInputWidgets(
      CreateDispatchState state, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTextField('Driver Name', state.driver, context, (name) {
          context.read<CreateDispatchCubit>().setDriver(name);
        }),
        _buildTextField('Vehicle Number', state.vehicleNumber, context, (name) {
          context.read<CreateDispatchCubit>().setVehicleNumber(name);
        }),
        _buildTextField('Sender Name', state.sender, context, (name) {
          context.read<CreateDispatchCubit>().setSender(name);
        }),
      ],
    );
  }

  Widget _buildScanOption() {
    return IconButton(
      icon: const Icon(Icons.qr_code_scanner),
      onPressed: () async {
        final result = await BarcodeScanner.scan();
        final rawContent = result.rawContent;
        if (rawContent.trim().isNotEmpty) {
          final unqCode = rawContent.substring(0, 5);
          final productCode = rawContent.substring(5, 10);
          final weight = rawContent.substring(10);

          context.read<CreateDispatchCubit>().saveScannedDispatchQty(
              widget.order, productCode, unqCode, weight);
        }
      },
    );
  }

  Widget _buildTextField(String title, String value, BuildContext context,
      ValueChanged<String> onChange) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        initialValue: value,
        keyboardType: TextInputType.text,
        textCapitalization: TextCapitalization.characters,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(0.0)),
          hintText: title,
          labelText: title,
        ),
        style: const TextStyle(fontSize: 20),
        onChanged: (name) => onChange(name.toUpperCase()),
      ),
    );
  }
}
