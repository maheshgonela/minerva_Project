

import 'package:base_auth/entity/logged_in_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_dispatch_orderedproduct/fetch_dispatch_orderedproduct_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_sales_order/fetch_sales_order_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/shop_trips/shop_trips_bloc.dart';
import 'package:minerva/features/dispatch/presentation/screen/create_dispatch_screen.dart';
import 'package:minerva/features/dispatch/presentation/screen/shop_trips.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:widgets/widgets.dart';

class SalesOrderList extends StatefulWidget {
  const SalesOrderList({
    Key? key,
    required this.businessPartnerId,
    required this.shop,
    required this.section,
  }) : super(key: key);
  final String businessPartnerId;
  final Shop shop;
  final String section;

  @override
  _SalesOrderListState createState() => _SalesOrderListState();
}

class _SalesOrderListState extends State<SalesOrderList> {
  LoggedInUser? user;
  ScrollController? _scrollController;
  String? _query;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchSalesOrderBloc>(context).add(
        FetchSalesOrderEvent.fetchInitialSalesOrder(widget.businessPartnerId));
    _scrollController = ScrollController();
    _scrollController?.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      BlocProvider.of<FetchSalesOrderBloc>(context).add(
          FetchSalesOrderEvent.fetchMoreSalesOrder(widget.businessPartnerId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GoBackIcon(icon: const Icon(Icons.arrow_back_ios)),
        title: Text(widget.shop.name),
      ),
      body: RefreshIndicator(
        strokeWidth: 1.0,
        onRefresh: () {
          _refresh(context);
          return Future.value(Duration(microseconds: 300));
        },
        child: BlocBuilder<FetchSalesOrderBloc, FetchSalesOrderState>(
            builder: (context, state) {
          return state.when(initial: () {
            return Center(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Search by document number to see orders',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ));
          }, loading: () {
            return const Center(child: CircularProgressIndicator());
          }, success: (records, hasReachedMax, query) {
            if (records.isEmpty) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: AppErrorWidget(
                    error:
                        'No booked sales orders found for ${widget.shop.name} since yesterday',
                    onRefresh: () => _refresh(context),
                  ),
                ),
              );
            } else {
              return ListView.builder(
                shrinkWrap: true,
                controller: _scrollController,
                padding: const EdgeInsets.all(16.0),
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (ctx, idx) {
                  if (idx >= records.length) {
                    return const Center(
                        child: FittedBox(
                            child:
                                CircularProgressIndicator(strokeWidth: 2.0)));
                  }

                  return _buildCard(records, idx);
                },
                itemCount: hasReachedMax ? records.length : records.length + 1,
              );
            }
          }, failure: (e) {
            return AppErrorWidget(
              onRefresh: () => _refresh(context),
              error: e.error,
            );
          });
        }),
      ),
    );
  }

  Widget _buildCard(List<SalesOrder> records, int idx) {
    final record = records[idx];
    return Card(
      elevation: 2.0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.5),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx2) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (ctx) => sl.get<FetchDispatchOrderedproductBloc>(),
                ),
                BlocProvider.value(
                    value: BlocProvider.of<CreateDispatchCubit>(context))
              ],
              child: CreateDispatchScreen(
                shop: widget.shop,
                order: records[idx],
                section: widget.section,
              ),
            ),
          ));
        },
        title: Text(
          record.documentNo,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              records[idx].scheduledDeliveryDate,
              style: Theme.of(context).textTheme.caption?.copyWith(),
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
    BlocProvider.of<FetchSalesOrderBloc>(context).add(
        FetchSalesOrderEvent.fetchInitialSalesOrder(widget.businessPartnerId));
  }

  void _openTrips(String section, String id) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return BlocProvider(
        create: (ctx) => sl.get<ShopTripsBloc>(),
        child: ShopTrips(
          section: section,
          orderId: id,
          shop: widget.shop.name,
        ),
      );
    }));
  }
}
