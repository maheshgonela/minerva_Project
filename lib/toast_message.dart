import 'package:flutter/material.dart';

Future toastMessage({
  required String errorMessage,
  required BuildContext? context,
}) async {
  if (context != null) {
    final snackbar =  SnackBar(content: Text(errorMessage.toUpperCase()),duration: const Duration(seconds: 900),behavior: SnackBarBehavior.floating,);
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
