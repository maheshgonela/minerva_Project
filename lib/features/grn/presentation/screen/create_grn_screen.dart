import 'dart:ui';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/grn/domain/entities/grn_item_ui_model.dart';
import 'package:minerva/features/grn/domain/entities/purchase_order.dart';
import 'package:minerva/features/grn/presentation/blocs/create_grn/create_grn_cubit.dart';
import 'package:minerva/features/grn/presentation/blocs/fetch_orderedproduct/fetch_orderedproduct_bloc.dart';
import 'package:minerva/features/grn/presentation/widgets/grn_product_list.dart';
import 'package:minerva/features/grn/presentation/widgets/grn_progress_dialog.dart';
import 'package:widgets/widgets.dart';

class CreateGRNScreen extends StatefulWidget {
  const CreateGRNScreen({
    Key? key,
    required this.order,
  }) : super(key: key);

  final PurchaseOrder order;

  @override
  _CreateGRNScreenState createState() => _CreateGRNScreenState();
}

class _CreateGRNScreenState extends State<CreateGRNScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController?.addListener(_onScroll);

    _refresh(context);
    context.read<CreateGrnCubit>().setOrder(widget.order);
  }

  void _onScroll() {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      _fetchMore();
    }
  }

  void _fetchMore() {
    BlocProvider.of<FetchOrderedproductBloc>(context)
        .add(FetchOrderedproductEvent.fetchMoreOrderedproduct(widget.order.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return !context.read<CreateGrnCubit>().state.isLoading;
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: GoBackIcon(
                  icon: const Icon(Icons.clear, color: Colors.black),
                ),
                title: Text(
                  'GRN',
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Text(
                  widget.order.documentNo,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                    fontFeatures: [
                      const FontFeature.oldstyleFigures(),
                      const FontFeature.slashedZero(),
                      const FontFeature.enable('smcp'),
                    ],
                  ),
                ),
                trailing: _buildCreateButton(context),
              ),
              BlocBuilder<CreateGrnCubit, CreateGrnState>(
                builder: (ctx, state) => Expanded(
                  child: _buildList(context, state.grnProducts),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await BarcodeScanner.scan();
          final rawContent = result.rawContent;
          // final rawContent = "00001103321145";
          if (rawContent.trim().isNotEmpty) {
            final unqCode = rawContent.substring(0, 5);
            final productCode = rawContent.substring(5, 10);
            final weight = rawContent.substring(10);

            context
                .read<CreateGrnCubit>()
                .saveScannedDispatchQty(unqCode, productCode, weight);
          }
        },
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }

  Widget _buildCreateButton(BuildContext context) {
    return BlocConsumer<CreateGrnCubit, CreateGrnState>(
      listener: (ctx, state) {
        if (state.errorMessage.isNotEmpty) {
          toastMessage(errorMessage: state.errorMessage, context: ctx);
        }
      },
      builder: (ctx, state) => state.isLoading || state.isSuccess
          ? const SizedBox(width: 0, height: 0)
          : ElevatedButton(
              onPressed:
                  state.grnProducts.isEmpty ? null : () => _createGrn(context),
              child: const Text(
                'CREATE GRN',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }

  Widget _buildList(BuildContext context, List<GrnItemUiModel> grnProducts) {
    return RefreshIndicator(
      strokeWidth: 1.0,
      onRefresh: () {
        _refresh(context);
        return Future.value(const Duration(microseconds: 300));
      },
      child: BlocConsumer<FetchOrderedproductBloc, FetchOrderedproductState>(
        listener: (ctx, state) {
          state.maybeWhen(
            success: (records, _, __) {
              context.read<CreateGrnCubit>().setOrderProductList(records);
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
              if (records.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: EmptyListWidget(
                    title:
                        'All products of order ${widget.order.documentNo} had received.',
                    onRefresh: () => _refresh(context),
                  ),
                );
              } else {
                return GrnProductList(
                  // key: ObjectKey(grnProducts),
                  records: records,
                  grnProducts: grnProducts,
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

  void _createGrn(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => BlocProvider.value(
        value: BlocProvider.of<CreateGrnCubit>(context),
        child: const GrnProgressDialog(),
      ),
    ).then((value) {
      if (value == true) Navigator.of(context).pop();
    });
    context.read<CreateGrnCubit>().createGrn();
  }

  void _refresh(BuildContext context) {
    BlocProvider.of<FetchOrderedproductBloc>(context).add(
        FetchOrderedproductEvent.fetchInitialOrderedproduct(widget.order.id));
  }
}
