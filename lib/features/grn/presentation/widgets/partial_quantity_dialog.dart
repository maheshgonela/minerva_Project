import 'package:flutter/material.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';

class PartialQuantityDialog extends StatefulWidget {
  const PartialQuantityDialog({
    Key? key,
    required this.context,
    required this.enteredQunatity,
    required this.onCancel,
    required this.product,
  }) : super(key: key);

  final BuildContext context;
  final Function(String receivedQuantity) enteredQunatity;
  final Function(bool onCancel) onCancel;
  final OrderedProduct product;

  @override
  _PartialQuantityDialogState createState() => _PartialQuantityDialogState();
}

class _PartialQuantityDialogState extends State<PartialQuantityDialog> {
  String _errorMessage = '';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.onCancel(false);
        return false;
      },
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        title: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(widget.product.productName),
          subtitle: Text(widget.product.subCategory.toString()),
          trailing: Text(widget.product.pendingQty.toString(), style: Theme.of(context).textTheme.headline6),
        ),
        insetPadding: const EdgeInsets.all(16.0),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(),
            TextField(
              autofocus: true,
              controller: _controller,
              decoration: InputDecoration(
                  labelText: 'RECEIVED QUANTITY',
                  errorText: _errorMessage,
                  errorMaxLines: 2,
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  suffixText: 'out of ${widget.product.pendingQty}'),
              style: const TextStyle(fontSize: 24.0),
              onChanged: (value) {
                if (value.trim().isNotEmpty) {
                  final parsed = double.tryParse(value);
                  if (parsed == null || parsed <= 0) {
                    setState(() {
                      _errorMessage = 'Invalid quantity';
                    });
                  } else {
                    setState(() {
                      _errorMessage = '';
                    });
                  }
                } else {
                  setState(() {
                    _errorMessage = '';
                  });
                }
              },
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
              widget.onCancel(false);
            },
            child: const Text('CANCEL'),
          ),
          ElevatedButton(
            onPressed: _errorMessage.isNotEmpty
                ? null
                : () {
                    if (_controller.text.toString().isNotEmpty) {
                      widget.enteredQunatity(_controller.text.toString());
                      Navigator.of(context).pop();
                    }
                  },
            child: const Text('CONTINUE'),
          )
        ],
      ),
    );
  }
}
