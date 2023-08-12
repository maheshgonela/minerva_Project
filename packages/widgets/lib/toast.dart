part of widgets;

Future toastMessage({
  required String errorMessage,
  required BuildContext context,
}) async {
  // await showFlash(
  //   context: context,
  //   duration: Duration(seconds: 3),
  //   builder: (context, controller) {
  //     return Flash.dialog(
  //       controller: controller,
  //       borderWidth: 6.0,
  //       borderRadius: BorderRadius.circular(8),
  //       margin: EdgeInsets.all(6.0),
  //       horizontalDismissDirection: HorizontalDismissDirection.startToEnd,
  //       backgroundColor: Colors.black,
  //       alignment: Alignment.topCenter,
  //       forwardAnimationCurve: Curves.easeIn,
  //       reverseAnimationCurve: Curves.easeOut,
  //       enableDrag: true,
  //       child: FlashBar(
  //         message: Text(
  //           errorMessage,
  //           maxLines: 2,
  //           style: Theme.of(context).textTheme.bodyText1?.copyWith(
  //                 color: Colors.amber,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //         ),
  //         padding: EdgeInsets.all(24.0),
  //         icon: Icon(Icons.warning, color: Colors.amber),
  //       ),
  //     );
  //   },
  // );
}
