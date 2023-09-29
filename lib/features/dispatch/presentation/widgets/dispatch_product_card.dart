import 'package:flutter/material.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_item_ui_model.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/widgets/dipatch_partial_quantity_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DispatchProductCard extends StatefulWidget {
  const DispatchProductCard({
    Key? key,
    required this.product,
    required this.order,
  }) : super(key: key);

  final SalesOrder order;
  final DispatchOrderedProduct product;

  @override
  _DispatchProductCardState createState() => _DispatchProductCardState();
}

class _DispatchProductCardState extends State<DispatchProductCard>
    with AutomaticKeepAliveClientMixin {
  late DispatchItemUiModel _dispatchItemUiModel;
  final double _defElevation = 2.0;
  final double _selectedElevation = 24.0;
  double _elevation = 2.0;
  Color _cardBackgroundColor = Colors.white;

  @override
  void initState() {
    super.initState();

    print("${widget.product.productName} ${widget.product.dispatchQty}");

    final dispatchQty = double.parse(widget.product.dispatchQty);
    final orderedQty = double.parse(widget.product.pendingQty);
    final isReceivedFull2 = dispatchQty >= orderedQty;
    final isReceivedPartial = dispatchQty != 0 && dispatchQty != orderedQty;

    _dispatchItemUiModel = DispatchItemUiModel(
      product: widget.product,
      isReceivedFull: isReceivedFull2,
      isReceivedPartial: isReceivedPartial,
      dispatchedQty: dispatchQty,
    );

    if (_dispatchItemUiModel.isReceivedFull) {
      _cardBackgroundColor = Colors.greenAccent;
    } else if (_dispatchItemUiModel.isReceivedPartial) {
      _cardBackgroundColor = Colors.orangeAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return InkWell(
      onDoubleTap: () {
        if (_dispatchItemUiModel.isReceivedPartial) {
          setState(() {
            _resetProductState();
            _cardBackgroundColor = Colors.white;
            _elevation = _defElevation;
          });
        } else {
          _askForQuantity(context);
        }
      },
      onTap: () {
        if (_dispatchItemUiModel.isReceivedFull) {
          setState(() {
            _resetProductState();
            _cardBackgroundColor = Colors.white;
            _elevation = _defElevation;
          });
        } else {
          setState(() {
            _setFullQuantityState();
            _cardBackgroundColor = Colors.greenAccent;
            _elevation = _selectedElevation;
          });
        }
      },
      child: Card(
        elevation: _elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: const BorderSide(width: 1.5),
        ),
        color: _cardBackgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              // contentPadding: EdgeInsets.all(10),
              leading: CircleAvatar(
                backgroundColor: _cardBackgroundColor,
                child: Icon(_dispatchItemUiModel.isReceivedFull
                    ? Icons.done_all
                    : _dispatchItemUiModel.isReceivedPartial
                        ? Icons.star_half
                        : Icons.pending_actions),
              ),
              title: Text(widget.product.productName,
                  style: Theme.of(context).textTheme.titleLarge),
              subtitle: Text(widget.product.productCategory),
              trailing: Text(
                widget.product.pendingQty.toString(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            if (_dispatchItemUiModel.dispatchedQty != 0 &&
                _dispatchItemUiModel.isReceivedPartial)
              ListTile(
                tileColor: _cardBackgroundColor.withAlpha(85),
                title: Text('Dispatched',
                    style: Theme.of(context).textTheme.headlineSmall),
                trailing: Text(
                    _dispatchItemUiModel.dispatchedQty.toString().endsWith(".0")
                        ? '${_dispatchItemUiModel.dispatchedQty.toInt()}'
                        : _dispatchItemUiModel.dispatchedQty.toStringAsFixed(3),
                    style: Theme.of(context).textTheme.headlineSmall),
              ),
          ],
        ),
      ),
    );
  }

  void _askForQuantity(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => DispatchPartialQuantityDialog(
              key: ObjectKey(widget.product),
              product: widget.product,
              context: context,
              onCancel: (onCancel) {
                setState(() {
                  _resetProductState();
                  _cardBackgroundColor = Colors.white;
                  _elevation = _defElevation;
                });
              },
              enteredQunatity: (String entered) {
                setState(() {
                  final double enteredQty = double.parse(entered);
                  if (enteredQty ==
                      double.parse(_dispatchItemUiModel.product.pendingQty)) {
                    _setFullQuantityState();
                    _cardBackgroundColor = Colors.greenAccent;
                  } else {
                    _setPartialQtyState(enteredQty);
                    _cardBackgroundColor = Colors.orangeAccent;
                  }
                  _elevation = _selectedElevation;
                });
              },
            ));
  }

  void _setFullQuantityState() {
    _dispatchItemUiModel = _dispatchItemUiModel.copyWith(
      isReceivedFull: true,
      isReceivedPartial: false,
      dispatchedQty: double.parse(widget.product.pendingQty),
    );
    _updateDispatchState();
  }

  void _setPartialQtyState(double enteredQty) {
    _dispatchItemUiModel = _dispatchItemUiModel.copyWith(
      isReceivedFull: false,
      isReceivedPartial: true,
      dispatchedQty: enteredQty,
    );
    _updateDispatchState();
  }

  void _resetProductState() {
    _dispatchItemUiModel = _dispatchItemUiModel.copyWith(
      isReceivedFull: false,
      isReceivedPartial: false,
      dispatchedQty: 0,
    );
    _updateDispatchState();
  }

  void _updateDispatchState() {
    context
        .read<CreateDispatchCubit>()
        .onProductStateChanged(widget.order, _dispatchItemUiModel);

    context.read<CreateDispatchCubit>().saveDispatchQty(
          widget.product.id,
          _dispatchItemUiModel.dispatchedQty,
        );
  }

  @override
  bool get wantKeepAlive => true;
}
