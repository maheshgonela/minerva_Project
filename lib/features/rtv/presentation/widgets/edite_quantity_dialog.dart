import 'package:flutter/material.dart';
import 'package:minerva/features/rtv/domain/entity/shipment_form_line.dart';

class EditeQuantityDialog extends StatefulWidget {
  final ShipmentFormLine record;
  final Function(double) onQuantityUpdated; // Callback function

  const EditeQuantityDialog(
      {Key? key, required this.record, required this.onQuantityUpdated})
      : super(key: key);
  @override
  State<EditeQuantityDialog> createState() => _EditeQuantityDialogState();
}

class _EditeQuantityDialogState extends State<EditeQuantityDialog> {
  String _errorMessage = '';
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.record.uomName == 'Kilogram') {
      _controller.text = widget.record.movementQty.toString();
    } else {
      _controller.text = widget.record.movementQty.toInt().toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Quantity'),
      content: TextFormField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: widget.record.uomName,
            alignLabelWithHint: true,
            labelText: 'New Quantity',
            errorText: _errorMessage,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(
                  width: 2,
                ))),
        style: const TextStyle(fontSize: 24.0),
        onChanged: (value) {
          _processInput(value, widget.record.uomName);
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _errorMessage.isNotEmpty
              ? null
              : () {
                  final newQty = double.tryParse(_controller.text);
                  if (newQty != null) {
                    widget.onQuantityUpdated(
                        newQty); // Call the callback function
                    Navigator.of(context).pop();
                  }
                },
          child: const Text('Save'),
        ),
      ],
    );
  }

  void _processInput(String value, String mesurments) {
    if (mesurments == 'Kilogram' && value.trim().isNotEmpty) {
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
      final parsed = int.tryParse(value);

      if (parsed == null || parsed <= 0) {
        setState(() {
          _errorMessage = 'Invalid quantity';
        });
      } else {
        setState(() {
          _errorMessage = '';
        });
      }
    }
  }
}
