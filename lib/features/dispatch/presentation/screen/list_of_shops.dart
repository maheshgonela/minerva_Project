import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_sales_order/fetch_sales_order_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_shops/fetch_shop_bloc.dart';
import 'package:minerva/features/dispatch/presentation/screen/sales_order_list.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class ListOfShops extends StatefulWidget {
  const ListOfShops({Key? key, required this.section, required this.OrgId})
      : super(key: key);

  final String section;
  final String OrgId;

  @override
  State<ListOfShops> createState() => _ListOfShopsState();
}

class _ListOfShopsState extends State<ListOfShops> {
  ScrollController? _scrollController;
  String? _query;

  @override
  void initState() {
    super.initState();
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
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Dispatch ${widget.section}',
          style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    return BlocBuilder<FetchShopBloc, FetchShopState>(
      builder: (ctx, state) {
        return state.when(initial: () {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Search by shop name',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          );
        }, loading: () {
          return const Center(child: LoadingIndicator());
        }, success: (records, hasReachedMax, query) {
          if (records.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: AppErrorWidget(
                  error: 'No shop found with default organization',
                  onRefresh: () => _refresh(context),
                ),
              ),
            );
          } else {
            return RefreshIndicator(
              onRefresh: () {
                _refresh(context);
                return Future.delayed(const Duration(seconds: 1));
              },
              child: ListView.builder(
                shrinkWrap: true,
                controller: _scrollController,
                padding: const EdgeInsets.all(16.0),
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (ctx, idx) {
                  if (idx >= records.length) {
                    return const Center(
                      child: FittedBox(
                        child: LoadingIndicator(),
                      ),
                    );
                  }

                  return _buildCard(records[idx]);
                },
                itemCount: hasReachedMax ? records.length : records.length + 1,
              ),
            );
          }
        }, failure: (e) {
          return AppErrorWidget(
            onRefresh: () => _refresh(context),
            error: e.error,
          );
        });
      },
    );
  }

  Widget _buildCard(Shop record) {
    return Card(
      elevation: 2.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
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
                // BlocProvider.value(
                //   value: BlocProvider.of<CreateDispatchCubit>(context),
                // ),
                BlocProvider(create: (ctx) => sl.get<CreateDispatchCubit>()),
              ],
              child: SalesOrderList(
                businessPartnerId: record.id,
                shop: record,
                section: widget.section,
              ),
            ),
          ));
        },
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColorLight,
          child: Text(
            record.name.characters.first,
            // style: const TextStyle(color: Colors.white),
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
        .add(FetchShopEvent.fetchInitialShop(query: widget.OrgId));
  }
}
