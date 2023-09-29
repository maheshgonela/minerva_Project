import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';

class DispatchProgressDialog extends StatelessWidget {
  const DispatchProgressDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateDispatchCubit, CreateDispatchState>(
      builder: (ctx, state) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: AlertDialog(
            backgroundColor: state.isSuccess
                ? Colors.greenAccent.shade100
                : state.errorMessage.isNotEmpty
                    ? Colors.orangeAccent.shade100
                    : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            title: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 8,
                    ),
                  )
                : state.isSuccess
                    ? const Icon(Icons.done, size: 48)
                    : const Icon(Icons.warning_amber_sharp, size: 48),
            content: Text(
              _getMessage(state),
              textAlign: TextAlign.center,
              maxLines: 3,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            actions: [
              if (state.isLoading == false)
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(state.shipmentId),
                  child: const Text('Okay. Close the dialog'),
                ),
            ],
          ),
        );
      },
    );
  }

  String _getMessage(CreateDispatchState state) {
    if (state.isSuccess) return 'Dispatched successfully';
    if (state.errorMessage.isNotEmpty) return state.errorMessage;
    return 'Dispatching...';
  }
}
