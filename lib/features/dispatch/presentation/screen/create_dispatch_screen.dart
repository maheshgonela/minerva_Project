import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/bloc/download_invoice/download_invoice_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_dispatch_orderedproduct/fetch_dispatch_orderedproduct_bloc.dart';
import 'package:minerva/features/dispatch/presentation/widgets/dispatch_product_list.dart';
import 'package:minerva/features/dispatch/presentation/widgets/dispatch_progress_dialog.dart';
import 'package:minerva/features/dispatch/presentation/widgets/invoice_progress_dialog.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:widgets/widgets.dart';

class CreateDispatchScreen extends StatefulWidget {
  const CreateDispatchScreen({
    Key? key,
    required this.order,
    required this.section,
    required this.shop,
  }) : super(key: key);

  final String section;
  final SalesOrder order;
  final Shop shop;

  @override
  _CreateDispatchScreenState createState() => _CreateDispatchScreenState();
}

class _CreateDispatchScreenState extends State<CreateDispatchScreen> {
  @override
  void initState() {
    super.initState();

    _refresh(context);
    context.read<CreateDispatchCubit>().setOrder(widget.shop, widget.order);
    context.read<CreateDispatchCubit>().setSection(widget.section);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.shop.name),
        toolbarHeight: 80,
        titleSpacing: 0,
        actions: [
          _buildCreateButton(context),
        ],
      ),
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return !context.read<CreateDispatchCubit>().state.isLoading;
          },
          child: _buildList(context),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return BlocListener<CreateDispatchCubit, CreateDispatchState>(
      listener: (ctx, state) {
        if (state.isSuccess) {
          _refresh(context);
        }
      },
      child: BlocConsumer<FetchDispatchOrderedproductBloc,
          FetchDispatchOrderedproductState>(
        listener: (ctx, state) {
          state.maybeWhen(
            success: (records, _, __) {
              context.read<CreateDispatchCubit>().setOrderProductList(widget.shop, widget.order, records);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () {
              return const Center(child: CircularProgressIndicator());
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            success: (records, hasReachedMax, query) {
              return DispatchProductList(records: records, order: widget.order);
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
              widget.order.id)
          : FetchDispatchOrderedproductEvent.fetchSweetsProducts(
              widget.order.id),
    );
  }

  Widget _buildCreateButton(BuildContext context) {
    return BlocBuilder<CreateDispatchCubit, CreateDispatchState>(
      builder: (ctx, state) {
        if (state.isLoading) {
          return const SizedBox(width: 0, height: 0);
        } else {
          final shopItems = state.dispatchOrders
              .where((element) => element.shop.id == widget.shop.id)
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
    context.read<CreateDispatchCubit>().createDispatch(widget.shop.id);
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
