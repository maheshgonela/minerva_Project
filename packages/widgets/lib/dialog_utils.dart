import 'package:flutter/material.dart';

Future showSimpleDialog(BuildContext context, String title, String content,
    {Color backgroundColor = Colors.blue}) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: backgroundColor,
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          content: content.isEmpty
              ? null
              : Text(
                  content,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'OKAY',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        );
      });
}

Future showSuccessDialog(BuildContext context, String message) {
  return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Colors.green,
          content: Text(
            message,
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'OKAY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        );
      });
}

Future showFailureDialog(String errorMessage, BuildContext context) {
  return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text('Something went wrong',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            content: Text(errorMessage,
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('Okay'))
            ]);
      });
}
