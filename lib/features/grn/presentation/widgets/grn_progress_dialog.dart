import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/grn/presentation/blocs/create_grn/create_grn_cubit.dart';

class GrnProgressDialog extends StatelessWidget {
  const GrnProgressDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGrnCubit, CreateGrnState>(
      builder: (ctx, state) => WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: AlertDialog(
          backgroundColor: state.isSuccess ? Colors.greenAccent.shade100 :
          state.errorMessage.isNotEmpty ? Colors.orangeAccent.shade100 : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
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
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            if (state.isLoading == false)
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(state.isSuccess),
                child: const Text('Okay. Close the dialog'),
              ),
          ],
        ),
      ),
    );
  }

  String _getMessage(CreateGrnState state) {
    if (state.isSuccess) return 'GRN created successfully';
    if (state.errorMessage.isNotEmpty) return state.errorMessage;
    return 'Creating GRN...';
  }
}
