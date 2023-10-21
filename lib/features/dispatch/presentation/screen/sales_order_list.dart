import 'package:base_auth/entity/id_name.dart';
import 'package:base_auth/entity/logged_in_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_dispatch_orderedproduct/fetch_dispatch_orderedproduct_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_organizations/fetch_organization_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_sales_order/fetch_sales_order_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_shops/fetch_shop_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/shop_trips/shop_trips_bloc.dart';
import 'package:minerva/features/dispatch/presentation/screen/create_dispatch_screen.dart';
import 'package:minerva/features/dispatch/presentation/screen/shop_trips.dart';
import 'package:minerva/features/dispatch/presentation/widgets/org_bp_selecter_alertdialog.dart';

import 'package:minerva/get_it/injection.dart';
import 'package:widgets/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class SalesOrderList extends StatefulWidget {
  const SalesOrderList({
    Key? key,
    required this.section,
  }) : super(key: key);

  final String section;

  @override
  State<SalesOrderList> createState() => _SalesOrderListState();
}

class _SalesOrderListState extends State<SalesOrderList> {
  final user = sl.get<LoggedInUser>();
  ScrollController? _scrollController;
  //String? _query;
  List<IdName> _orgbps = [];

  @override
  void initState() {
    super.initState();
    fetchShop();

    _scrollController = ScrollController();
    _scrollController?.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      if (_orgbps.isEmpty) {
        BlocProvider.of<FetchSalesOrderBloc>(context).add(
            FetchSalesOrderEvent.fetchMoreSalesOrder(
                user.businessPartner, user.defaultOrganization));
      } else {
        BlocProvider.of<FetchSalesOrderBloc>(context).add(
            FetchSalesOrderEvent.fetchMoreSalesOrder(
                _orgbps[0].id, _orgbps[1].id));
      }
    }
  }

  IdName fetchShop() {
    final IdName shop =
        IdName(id: user.businessPartner, name: user.businessPartnerName);
    return shop;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        height: 60,
        title: "Sales Orders",
        centerTitle: true,
        // bottom: const PreferredSize(
        //     preferredSize: Size.fromHeight(10), child: Text("Seles orders")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
              elevation: 2.0,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero, side: BorderSide.none),
              margin: const EdgeInsets.all(0),
              child: Container(
                padding: const EdgeInsets.only(left: 8, right: 8),
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              _orgbps.isNotEmpty
                                  ? _orgbps[1].name
                                  : user.userName,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromARGB(170, 0, 0, 0))),
                          const Icon(
                            color: Colors.grey,
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                          ),
                          Text(
                              _orgbps.isNotEmpty
                                  ? _orgbps[0].name
                                  : fetchShop().name,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromARGB(170, 0, 0, 0))),
                        ],
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context) {
                              return MultiBlocProvider(
                                providers: [
                                  BlocProvider.value(
                                    value: sl.get<FetchOrganizationBloc>()
                                      ..add(const FetchOrganizationEvent
                                          .fetchInitialOrganization()),
                                  ),
                                  BlocProvider.value(
                                    value: sl.get<FetchShopBloc>()
                                      ..add(const FetchShopEvent
                                          .fetchInitialShop()),
                                  ),
                                  BlocProvider(
                                    create: (ctx) =>
                                        sl.get<FetchSalesOrderBloc>(),
                                  ),
                                ],
                                child: const OrgBpSelecterAlertDialog(),
                              );
                            },
                          ).then((value) {
                            if (value is List<IdName>) {
                              if (value.isNotEmpty) {
                                setState(() {
                                  _orgbps = value;
                                });
                                BlocProvider.of<FetchSalesOrderBloc>(context)
                                    .add(FetchSalesOrderEvent
                                        .fetchInitialSalesOrder(
                                            value[0].id, value[1].id));
                              }
                            } else {}
                          });
                        },
                        icon: const Icon(Icons.filter_list_rounded, size: 26),
                        label: const Text("Set",
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                    ]),
              )),
          BlocBuilder<FetchSalesOrderBloc, FetchSalesOrderState>(
              builder: (context, state) {
            return state.when(initial: () {
              return Center(
                  child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Search by document number to see orders',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ));
            }, loading: () {
              return Expanded(child: Center(child: LoadingIndicator()));
            }, success: (records, hasReachedMax, query) {
              if (records.isEmpty) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: AppErrorWidget(
                        error:
                            'No booked sales orders found for  since yesterday',
                        onRefresh: () => _refresh(context),
                      ),
                    ),
                  ),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    controller: _scrollController,
                    padding: const EdgeInsets.all(16.0),
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (ctx, idx) {
                      if (idx >= records.length) {
                        return Center(child: LoadingIndicator());
                      }

                      return _buildCard(records[idx]);
                    },
                    itemCount:
                        hasReachedMax ? records.length : records.length + 1,
                  ),
                );
              }
            }, failure: (e) {
              return Expanded(
                child: AppErrorWidget(
                  onRefresh: () => _refresh(context),
                  error: e.error,
                ),
              );
            });
          })
        ],
      ),
    );
  }

  Widget _buildCard(SalesOrder record) {
    return Card(
      elevation: 2.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        // side: BorderSide(width: 1.5),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (ctx) => sl.get<FetchDispatchOrderedproductBloc>(),
                ),
                BlocProvider.value(
                    value: BlocProvider.of<CreateDispatchCubit>(context)),
              ],
              child: CreateDispatchScreen(
                shop: _orgbps.isEmpty ? fetchShop() : _orgbps[0],
                order: record,
                section: widget.section,
              ),
            ),
          ));
        },
        title: Text(
          record.documentNo,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              record.scheduledDeliveryDate,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(),
            ),
          ],
        ),
        trailing: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == '1') {
              _openTrips(widget.section, record.id);
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
            ];
          },
        ),
      ),
    );
  }

  void _refresh(BuildContext context) {
    print("?? ???$_orgbps");
    if (_orgbps.isEmpty) {
      BlocProvider.of<FetchSalesOrderBloc>(context).add(
          FetchSalesOrderEvent.fetchMoreSalesOrder(
              user.businessPartner, user.defaultOrganization));
    } else {
      BlocProvider.of<FetchSalesOrderBloc>(context).add(
          FetchSalesOrderEvent.fetchMoreSalesOrder(
              _orgbps[0].id, _orgbps[1].id));
    }
  }

  void _openTrips(String section, String id) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return BlocProvider(
        create: (ctx) => sl.get<ShopTripsBloc>(),
        child: ShopTrips(
          section: section,
          orderId: id,
          shop: _orgbps.isNotEmpty ? _orgbps[0].name : fetchShop().name,
        ),
      );
    }));
  }
}
