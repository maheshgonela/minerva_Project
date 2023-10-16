import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/download_invoice/download_invoice_bloc.dart';
import 'package:minerva/toast_message.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:widgets/loading_indicator.dart';

class InvoiceProgressDialog extends StatelessWidget {
  const InvoiceProgressDialog({Key? key, required this.shipmentId})
      : super(key: key);

  final String shipmentId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DownloadInvoiceBloc, DownloadInvoiceState>(
      listener: (ctx, state) {
        state.maybeWhen(
          success: (d) async {
            final file = await _createFileFromString(d, shipmentId);
            final open = await OpenFile.open(file);
            switch (open.type) {
              case ResultType.fileNotFound:
                toastMessage(errorMessage: 'File not found', context: context);
                break;
              case ResultType.noAppToOpen:
                toastMessage(errorMessage: open.message, context: context);
                break;
              case ResultType.permissionDenied:
                toastMessage(
                    errorMessage: 'Permission denied', context: context);
                break;
              case ResultType.error:
                toastMessage(errorMessage: open.message, context: context);
                break;
              default:
                break;
            }
          },
          failure: (f) {
            toastMessage(errorMessage: f.error, context: context);
          },
          orElse: () {},
        );
      },
      builder: (ctx, state) {
        return state.when(
          initial: () => _buildDialog(
            context,
            contentTile: 'Generating Invoice...',
            title: Center(
              child: LoadingIndicator(),
            ),
          ),
          loading: () => _buildDialog(
            context,
            contentTile: 'Generating Invoice...',
            title: Center(
              child: LoadingIndicator(),
            ),
          ),
          success: (d) => _buildDialog(
            context,
            contentTile: 'Invoice Generated Successfully',
            isSuccessful: true,
            title: const Icon(Icons.done, size: 48),
          ),
          failure: (f) => _buildDialog(
            context,
            contentTile: f.error,
            title: const Icon(Icons.warning_amber_sharp, size: 48),
          ),
        );
      },
    );
  }

  AlertDialog _buildDialog(
    BuildContext context, {
    required String contentTile,
    Widget? title,
    bool isSuccessful = false,
  }) {
    return AlertDialog(
      backgroundColor: Colors.greenAccent.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      title: title,
      content: Text(
        contentTile,
        textAlign: TextAlign.center,
        maxLines: 3,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(isSuccessful),
          child: const Text('Okay. Close the dialog'),
        ),
      ],
    );
  }

  Future<String> _createFileFromString(Uint8List data, String name) async {
    final String dir = (await getApplicationDocumentsDirectory()).path;
    final File file = File("${"$dir/"}$name.pdf");
    await file.writeAsBytes(data);
    return file.path;
  }
}
