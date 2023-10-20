import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/bloc/download_invoice/download_invoice_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_dispatch_orderedproduct/fetch_dispatch_orderedproduct_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_sales_order/fetch_sales_order_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/shop_trips/shop_trips_bloc.dart';
import 'package:minerva/features/dispatch/presentation/cubit/tablet_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/screen/shop_trips.dart';
import 'package:minerva/features/dispatch/presentation/widgets/dispatch_product_list.dart';
import 'package:minerva/features/dispatch/presentation/widgets/dispatch_progress_dialog.dart';
import 'package:minerva/features/dispatch/presentation/widgets/invoice_progress_dialog.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:widgets/loading_indicator.dart';

import 'package:widgets/widgets.dart';

class TabletShopOrders extends StatefulWidget {
  final String section;

  const TabletShopOrders({Key? key, required this.section}) : super(key: key);

  @override
  State<TabletShopOrders> createState() => _TabletShopOrdersState();
}

class _TabletShopOrdersState extends State<TabletShopOrders> {
  SalesOrder? _salesOrder;
  late IdName shop;

  @override
  void initState() {
    super.initState();
    context.read<CreateDispatchCubit>().setSection(widget.section);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TabletDispatchCubit, TabletDispatchState>(
          listener: (ctx, state) {
            if (state.shop != null) {
              shop = state.shop!;
            }
          },
        ),
        BlocListener<CreateDispatchCubit, CreateDispatchState>(
          listener: (ctx, state) {
            if (state.isSuccess) {
              _refresh(context);
            }
          },
        ),
      ],
      child: BlocConsumer<FetchSalesOrderBloc, FetchSalesOrderState>(
        listener: (ctx, state) {
          state.maybeWhen(
            success: (orders, _, __) {
              if (orders.isNotEmpty) {
                setState(() {
                  _salesOrder = orders[0];
                  context
                      .read<CreateDispatchCubit>()
                      .setOrder(shop, _salesOrder!);
                  _refresh(context);
                });
              }
            },
            orElse: () {},
          );
        },
        builder: (ctx, state) {
          return state.when(
            initial: () => _buildShopNotSelected(),
            loading: () => LoadingIndicator(),
            success: (orders, _, __) {
              if (orders.isEmpty) {
                return Center(
                  child: Text(
                    'No orders found for the selected store',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                );
              }
              return _buildLayout(orders);
            },
            failure: (f) => AppErrorWidget(
              error: f.error,
              onRefresh: () {},
            ),
          );
        },
      ),
    );
  }

  Widget _buildShopNotSelected() {
    return const Center(
      child: Text('Select shop see orders and products'),
    );
  }

  Widget _buildLayout(List<SalesOrder> orders) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(orders),
        const Divider(),
        if (_salesOrder != null) Expanded(child: _buildList(context)),
      ],
    );
  }

  Widget _buildHeader(List<SalesOrder> orders) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            contentPadding: const EdgeInsets.all(12.0),
            title: DropdownButton<SalesOrder>(
              isExpanded: true,
              underline: const SizedBox(width: 0, height: 0),
              items: orders.map((SalesOrder value) {
                return DropdownMenuItem<SalesOrder>(
                  value: value,
                  child: Row(
                    children: [
                      Text(value.documentNo,
                          style: Theme.of(context).textTheme.headlineSmall),
                      const SizedBox(width: 12),
                      Text(value.scheduledDeliveryDate),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (order) {
                setState(() {
                  _salesOrder = order;
                  context
                      .read<CreateDispatchCubit>()
                      .setOrder(shop, _salesOrder!);
                  _refresh(context);
                });
              },
              value: _salesOrder,
            ),
            leading: PopupMenuButton<String>(
              onSelected: (value) {
                if (value == '1') {
                  if (_salesOrder != null) {
                    _openTrips(widget.section, _salesOrder!.id);
                  }
                } else if (value == '2') {
                  BlocProvider.of<FetchSalesOrderBloc>(context).add(
                      FetchSalesOrderEvent.fetchInitialSalesOrder(shop.id, ""));
                }
              },
              itemBuilder: (ctx) {
                return [
                  const PopupMenuItem(
                    value: '1',
                    child: ListTile(
                      title: Text('Today Trips'),
                      leading: Icon(Icons.local_shipping_rounded),
                    ),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem(
                    value: '2',
                    child: ListTile(
                      title: Text('Refresh Indents'),
                      leading: Icon(Icons.shop),
                    ),
                  ),
                ];
              },
            ),
          ),
        ),
        _buildCreateButton(context),
      ],
    );
  }

  Widget _buildList(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        _refresh(context);
        return Future.value(const Duration(seconds: 2));
      },
      child: BlocConsumer<FetchDispatchOrderedproductBloc,
          FetchDispatchOrderedproductState>(
        listener: (ctx, state) {
          state.maybeWhen(
            success: (records, _, __) {
              if (_salesOrder != null) {
                context
                    .read<CreateDispatchCubit>()
                    .setOrderProductList(shop, _salesOrder!, records);
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () {
              return Center(child: LoadingIndicator());
            },
            loading: () {
              return Center(child: LoadingIndicator());
            },
            success: (records, hasReachedMax, query) {
              return DispatchProductList(records: records, order: _salesOrder!);
            },
            failure: (e) {
              return AppErrorWidget(
                onRefresh: () => _refresh(context),
                error: e.error,
              );
            },
          );
        },
      ),
    );
  }

  void _refresh(BuildContext context) {
    BlocProvider.of<FetchDispatchOrderedproductBloc>(context).add(
      widget.section == Constants.bakerySection
          ? FetchDispatchOrderedproductEvent.fetchBakeryProducts(
              _salesOrder!.id)
          : FetchDispatchOrderedproductEvent.fetchSweetsProducts(
              _salesOrder!.id),
    );
  }

  void _openTrips(String section, String id) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return BlocProvider(
        create: (ctx) => sl.get<ShopTripsBloc>(),
        child: ShopTrips(
          section: section,
          orderId: id,
          shop: shop.name,
        ),
      );
    }));
  }

  Widget _buildCreateButton(BuildContext context) {
    return BlocBuilder<CreateDispatchCubit, CreateDispatchState>(
      builder: (ctx, state) {
        if (state.isLoading) {
          return const SizedBox(width: 0, height: 0);
        } else {
          final shopItems = state.dispatchOrders
              .where((element) => element.shop.id == shop.id)
              .map((e) => e.dispatchItems)
              .reduce((value, element) => [...value, ...element]);

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed:
                  shopItems.isEmpty ? null : () => _createDispatch(context),
              child: const Text(
                'Complete Dispatch',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
      },
    );
  }

  void _createDispatch(BuildContext context) {
    context.read<CreateDispatchCubit>().createDispatch(shop.id);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => BlocProvider.value(
        value: BlocProvider.of<CreateDispatchCubit>(context),
        child: const DispatchProgressDialog(),
      ),
    ).then((value) {
      if (value != null) {
        context.read<CreateDispatchCubit>().resetState();
        _showDownloadInvoiceDialog(value as String);
      }
    });
  }

  void _showDownloadInvoiceDialog(String shipmentId) {
    showDialog(
      context: context,
      builder: (ctx) => BlocProvider<DownloadInvoiceBloc>(
        create: (ctx) => sl.get<DownloadInvoiceBloc>()
          ..add(DownloadInvoiceEvent.downloadInvoice(shipmentId)),
        child: InvoiceProgressDialog(shipmentId: shipmentId),
      ),
    );
  }
}
