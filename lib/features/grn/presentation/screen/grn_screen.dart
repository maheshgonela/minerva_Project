import 'dart:ui';

import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/shop_trips/shop_trips_bloc.dart';
import 'package:minerva/features/dispatch/presentation/screen/shop_trips.dart';
import 'package:minerva/features/grn/domain/entities/purchase_order.dart';
import 'package:minerva/features/grn/presentation/blocs/create_grn/create_grn_cubit.dart';
import 'package:minerva/features/grn/presentation/blocs/fetch_orderedproduct/fetch_orderedproduct_bloc.dart';
import 'package:minerva/features/grn/presentation/blocs/fetch_purchase_order/fetch_purchase_order_bloc.dart';
import 'package:minerva/features/grn/presentation/screen/create_grn_screen.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:widgets/widgets.dart';

class GRNScreen extends StatefulWidget {
  const GRNScreen({super.key});

  @override
  _GRNScreenState createState() => _GRNScreenState();
}

class _GRNScreenState extends State<GRNScreen> {
  ScrollController? _scrollController;
  String? _query;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController?.addListener(_onScroll);
    BlocProvider.of<FetchPurchaseOrderBloc>(context)
        .add(const FetchPurchaseOrderEvent.fetchInitialPurchaseOrder());
  }

  void _onScroll() {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      BlocProvider.of<FetchPurchaseOrderBloc>(context)
          .add(FetchPurchaseOrderEvent.fetchMorePurchaseOrder(query: _query));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Orders'),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          strokeWidth: 1.0,
          onRefresh: () {
            _refresh(context);
            return Future.value(const Duration(microseconds: 300));
          },
          child: BlocBuilder<FetchPurchaseOrderBloc, FetchPurchaseOrderState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return Center(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Search by document number to see orders',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ));
                },
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
                success: (records, hasReachedMax, query) {
                  if (records.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: EmptyListWidget(
                        title:
                            'No booked purchase orders found for last 2 days in your organization',
                        onRefresh: () {
                          _refresh(context);
                        },
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
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2.0)));
                        }

                        return _buildCard(records, idx);
                      },
                      itemCount:
                          hasReachedMax ? records.length : records.length + 1,
                    );
                  }
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
        ),
      ),
    );
  }

  Widget _buildCard(List<PurchaseOrder> records, int idx) {
    final record = records[idx];
    return Card(
      elevation: 2.0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.5),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (ctx) => sl.get<FetchOrderedproductBloc>(),
                ),
                BlocProvider(create: (ctx) => sl.get<CreateGrnCubit>())
              ],
              child: CreateGRNScreen(order: records[idx]),
            ),
          ));
        },
        title: Text(
          record.documentNo,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
            fontSize: 24,
            fontFeatures: [
              const FontFeature.oldstyleFigures(),
              const FontFeature.slashedZero(),
            ],
          ),
        ),
        subtitle: Text(records[idx].scheduledDeliveryDate),
        trailing: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == '1') {
              final loggedInUser = sl.get<LoggedInUser>();
              _openTrips(loggedInUser.organizationName, record.id, loggedInUser.organizationName);
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
    BlocProvider.of<FetchPurchaseOrderBloc>(context)
        .add(FetchPurchaseOrderEvent.fetchInitialPurchaseOrder(query: _query));
  }

  void _openTrips(String section, String orderId, String shopName) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return BlocProvider(
        create: (ctx) => sl.get<ShopTripsBloc>(),
        child: ShopTrips(
          section: section,
          orderId: orderId,
          shop: shopName,
          fromDispatchSection: false,
        ),
      );
    }));
  }
}
