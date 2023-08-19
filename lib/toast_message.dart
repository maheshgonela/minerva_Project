import 'package:flutter/material.dart';
import 'package:minerva/design/color_schemes.g.dart';

// Future toastMessage({
//   required String errorMessage,
//   required BuildContext? context,
// }) async {
//   if (context != null) {
//     final snackbar = SnackBar(
//       content: Text(errorMessage.toUpperCase()),
//       duration: const Duration(seconds: 900),
//       behavior: SnackBarBehavior.floating,
//     );
//     ScaffoldMessenger.of(context).showSnackBar(snackbar);
//   }
// }

Future toastMessage({
  required String errorMessage,
  required BuildContext? context,
}) async {
  if (context != null) {
    // If we want of show toast message at perticular area then we have to use
    //∆
    // bool bottomSpace = true;
    // if (errorMessage == 'Enter username and password') {
    //   bottomSpace = true;
    // } else {
    //   bottomSpace = false;
    // }

    final overlay = Overlay.of(context);

    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        //same purpose
        //∆
        // bottom: bottomSpace
        //     ? MediaQuery.of(context).size.height * 0.73
        //     : MediaQuery.of(context).size.height *
        //         0.05, // Adjust the position as needed
        bottom: MediaQuery.of(context).size.height *
            0.05, // Adjust the position as needed
        left: 15,
        right: 15,
        child: Material(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(188, 96, 118, 119),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1.8,
                  color: const Color.fromARGB(188, 96, 118, 200),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Shadow color
                    offset: const Offset(0, 3), // Offset in the x, y direction
                    blurRadius: 8, // Spread radius
                    spreadRadius: 0, // Spread radius
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline_rounded,
                      color: Color.fromARGB(255, 233, 30, 64), size: 28),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    //for checking
                    //'sdfghjksdfghjklasdfghjksdfghjkljqwertyuioytrewyuytretyuiuuyt',
                    errorMessage,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    overlay!.insert(overlayEntry);

    // Remove the SnackBar after some duration
    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }
}

//  showSnackbar(BuildContext context, String message) {
//   final overlay = Overlay.of(context);

//   OverlayEntry overlayEntry;
//   overlayEntry = OverlayEntry(
//     builder: (context) => Positioned(
//       bottom: MediaQuery.of(context).size.height *
//           0.1, // Adjust the position as needed
//       left: 15,
//       right: 15,
//       child: Material(
//         color: Colors.transparent,
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
//           decoration: BoxDecoration(
//             color: Colors.black, // Customize the background color
//             borderRadius: BorderRadius.circular(8),
//             boxShadow: const [
//               BoxShadow(
//                 color: Colors.black,
//                 blurRadius: 10,
//                 offset: Offset(0, 2),
//               ),
//             ],
//           ),
//           child: Text(
//             message,
//             style: const TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     ),
//   );

//   overlay.insert(overlayEntry);

//   // Remove the SnackBar after some duration
//   Future.delayed(const Duration(seconds: 2), () {
//     overlayEntry.remove();
//   });
// }
