import 'package:flutter/material.dart';
import 'package:minerva/features/grn/domain/entities/grn_item_ui_model.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';
import 'package:minerva/features/grn/presentation/blocs/create_grn/create_grn_cubit.dart';
import 'package:minerva/features/grn/presentation/widgets/partial_quantity_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GrnProductCard extends StatefulWidget {
  const GrnProductCard({Key? key, required this.product}) : super(key: key);

  final OrderedProduct product;

  @override
  _GrnProductCardState createState() => _GrnProductCardState();
}

class _GrnProductCardState extends State<GrnProductCard>
    with AutomaticKeepAliveClientMixin {
  late GrnItemUiModel _grnItemUiModel;
  final double _defElevation = 2.0;
  final double _selectedElevation = 24.0;
  double _elevation = 2.0;
  Color _cardBackgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final selectedReceivedQty =
        double.parse(widget.product.selectedReceivedQty);
    final orderedQty = double.parse(widget.product.pendingQty);
    final isReceivedFull2 = selectedReceivedQty == orderedQty;
    final isReceivedPartial =
        selectedReceivedQty != 0 && selectedReceivedQty != orderedQty;

    if (isReceivedFull2) {
      _cardBackgroundColor = Colors.greenAccent;
    } else if (isReceivedPartial) {
      _cardBackgroundColor = Colors.orangeAccent;
    } else {
      _cardBackgroundColor = Colors.white;
    }

    _grnItemUiModel = GrnItemUiModel(
      product: widget.product,
      isReceivedFull: isReceivedFull2,
      isReceivedPartial: isReceivedPartial,
      receivedQty: selectedReceivedQty,
    );

    return InkWell(
      onDoubleTap: () {
        if (_grnItemUiModel.isReceivedPartial) {
          _resetProductState();
        } else {
          _askForQuantity(context);
        }
      },
      onTap: () {
        if (_grnItemUiModel.isReceivedFull) {
          _resetProductState();
        } else {
          _setFullQuantityState();
        }
      },
      child: Card(
        elevation: _elevation,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          side: BorderSide(width: 1.5),
        ),
        color: _cardBackgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: _cardBackgroundColor,
                child: Icon(_grnItemUiModel.isReceivedFull
                    ? Icons.done_all
                    : _grnItemUiModel.isReceivedPartial
                        ? Icons.star_half
                        : Icons.pending_actions),
              ),
              title: Text(widget.product.productName),
              subtitle: Text(widget.product.subCategory),
              trailing: Text(
                widget.product.pendingQty.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            if (_grnItemUiModel.receivedQty != 0 &&
                _grnItemUiModel.isReceivedPartial)
              ListTile(
                tileColor: Colors.orangeAccent.shade100,
                title: const Text('Received'),
                trailing: Text(_grnItemUiModel.receivedQty.toStringAsFixed(3),
                    style: Theme.of(context).textTheme.titleLarge),
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
        builder: (BuildContext context) => PartialQuantityDialog(
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
                final double enteredQty = double.parse(entered);
                if (enteredQty ==
                    double.tryParse(_grnItemUiModel.product.pendingQty)) {
                  _setFullQuantityState();
                } else {
                  _setPartialQtyState(enteredQty);
                }
                _elevation = _selectedElevation;
              },
            ));
  }

  void _setFullQuantityState() {
    _grnItemUiModel = _grnItemUiModel.copyWith(
      isReceivedFull: true,
      isReceivedPartial: false,
      receivedQty: double.parse(widget.product.pendingQty),
    );
    _updateGrnState();
  }

  void _setPartialQtyState(double enteredQty) {
    _grnItemUiModel = _grnItemUiModel.copyWith(
      isReceivedFull: false,
      isReceivedPartial: true,
      receivedQty: enteredQty,
    );
    _updateGrnState();
  }

  void _resetProductState() {
    _grnItemUiModel = _grnItemUiModel.copyWith(
      isReceivedFull: false,
      isReceivedPartial: false,
      receivedQty: 0,
    );
    _updateGrnState();
  }

  void _updateGrnState() {
    context.read<CreateGrnCubit>().onProductStateChanged(_grnItemUiModel);

    context.read<CreateGrnCubit>().saveDispatchQty(
          widget.product.id,
          _grnItemUiModel.receivedQty,
        );
  }

  @override
  bool get wantKeepAlive => true;
}
