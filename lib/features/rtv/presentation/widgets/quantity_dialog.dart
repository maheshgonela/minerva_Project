import 'package:flutter/material.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';

class QuantityDialog extends StatefulWidget {
  const QuantityDialog({
    Key? key,
    required this.context,
    required this.enteredQunatity,
    required this.onCancel,
    required this.product,
  }) : super(key: key);

  final BuildContext context;
  final Function(String dispatchQuantity) enteredQunatity;
  final Function(bool onCancel) onCancel;
  final Product product;

  @override
  _QuantityDialogState createState() => _QuantityDialogState();
}

class _QuantityDialogState extends State<QuantityDialog> {
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
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        title: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(widget.product.name),
          subtitle: Text(widget.product.uomName),
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
                labelText: 'QUANTITY',
                errorText: _errorMessage,
                errorMaxLines: 2,
                labelStyle: Theme.of(context).textTheme.bodyText1,
              ),
              style: const TextStyle(fontSize: 24.0),
              onChanged: (value) {
                _processInput(value);
              },
              onSubmitted: (value) {
                _processInput(value);
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

  void _processInput(String value) {
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
  }
}
