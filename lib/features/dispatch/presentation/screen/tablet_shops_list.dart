import 'package:flutter/material.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_sales_order/fetch_sales_order_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_shops/fetch_shop_bloc.dart';
import 'package:minerva/features/dispatch/presentation/cubit/tablet_dispatch_cubit.dart';
import 'package:widgets/widgets.dart';

class TabletShopsList extends StatefulWidget {
  const TabletShopsList({
    Key? key,
    required this.section,
  }) : super(key: key);

  final String section;

  @override
  State<TabletShopsList> createState() => _TabletShopsListState();
}

class _TabletShopsListState extends State<TabletShopsList> {
  ScrollController? _scrollController;
  String? _query;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchShopBloc>(context)
        .add(const FetchShopEvent.fetchInitialShop());
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
    return Container(
      color: const Color(0xffeceff1),
      child: _buildList(context),
    );
  }

  RefreshIndicator _buildList(BuildContext context) {
    return RefreshIndicator(
      strokeWidth: 1.0,
      onRefresh: () {
        _refresh(context);
        return Future.value(const Duration(microseconds: 300));
      },
      child: BlocConsumer<FetchShopBloc, FetchShopState>(
        listener: (ctx, state) {
          state.maybeWhen(
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () {
              return Center(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Loading...',
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
                    title: 'No shop found with default organization',
                    onRefresh: () {
                      _refresh(context);
                    },
                  ),
                );
              } else {
                return ListView.separated(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (ctx, idx) => const Divider(),
                  itemBuilder: (ctx, idx) {
                    if (idx >= records.length) {
                      return const Center(
                          child: FittedBox(
                              child:
                                  CircularProgressIndicator(strokeWidth: 2.0)));
                    }

                    return _buildListItem(records, idx);
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
    );
  }

  Widget _buildListItem(List<Shop> records, int idx) {
    final record = records[idx];
    return BlocBuilder<TabletDispatchCubit, TabletDispatchState>(
      builder: (ctx, state) => ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        tileColor: record.id == state.shop?.id
            ? Colors.white
            : const Color(0xffeceff1),
        onTap: () {
          context.read<TabletDispatchCubit>().onShopSelected(record);
          BlocProvider.of<FetchSalesOrderBloc>(context)
              .add(FetchSalesOrderEvent.fetchInitialSalesOrder(record.id));
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
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        trailing: record.id == state.shop?.id
            ? const Icon(Icons.done)
            : const SizedBox(width: 0, height: 0),
      ),
    );
  }

  void _refresh(BuildContext context) {
    BlocProvider.of<FetchShopBloc>(context)
        .add(FetchShopEvent.fetchInitialShop(query: _query));
  }
}
