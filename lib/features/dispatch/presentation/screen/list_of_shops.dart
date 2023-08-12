import 'dart:ui';

import 'package:base_auth/entity/logged_in_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_sales_order/fetch_sales_order_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_shops/fetch_shop_bloc.dart';
import 'package:minerva/features/dispatch/presentation/screen/sales_order_list.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:widgets/widgets.dart';

class ListOfShops extends StatefulWidget {
  const ListOfShops({Key? key, required this.section}) : super(key: key);

  final String section;

  @override
  _ListOfShopsState createState() => _ListOfShopsState();
}

class _ListOfShopsState extends State<ListOfShops> {
  LoggedInUser? user;
  ScrollController? _scrollController;
  String? _query;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchShopBloc>(context)
        .add(FetchShopEvent.fetchInitialShop());
    _scrollController = ScrollController();
    _scrollController?.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      BlocProvider.of<FetchShopBloc>(context)
          .add(FetchShopEvent.fetchMoreShop(query: _query));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GoBackIcon(icon: const Icon(Icons.arrow_back_ios)),
        title: Text('Dispatch ${widget.section}'),
      ),
      body: _buildList(context),
    );
  }

  RefreshIndicator _buildList(BuildContext context) {
    return RefreshIndicator(
      strokeWidth: 1.0,
      onRefresh: () {
        _refresh(context);
        return Future.value();
      },
      child:
          BlocBuilder<FetchShopBloc, FetchShopState>(builder: (context, state) {
        return state.when(initial: () {
          return Center(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Search by shop name',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
          ));
        }, loading: () {
          return const Center(child: CircularProgressIndicator());
        }, success: (records, hasReachedMax, query) {
          if (records.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: EmptyListWidget(
                title: 'No shop found with default organization',
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
                          child: CircularProgressIndicator(strokeWidth: 2.0)));
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
    );
  }

  Widget _buildCard(List<Shop> records, int idx) {
    final record = records[idx];
    return Card(
      elevation: 2.0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1.5),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (ctx) => sl.get<FetchSalesOrderBloc>(),
                ),
                BlocProvider.value(
                  value: BlocProvider.of<CreateDispatchCubit>(context),
                ),
              ],
              child: SalesOrderList(
                businessPartnerId: records[idx].id,
                shop: records[idx],
                section: widget.section,
              ),
            ),
          ));
        },
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColorLight,
          child: Text(
            record.name.characters.first,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(
          record.name,
          style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFeatures: [
              const FontFeature.oldstyleFigures(),
              const FontFeature.slashedZero(),
            ],
          ),
        ),
      ),
    );
  }

  void _refresh(BuildContext context) {
    BlocProvider.of<FetchShopBloc>(context)
        .add(FetchShopEvent.fetchInitialShop(query: _query));
  }
}
