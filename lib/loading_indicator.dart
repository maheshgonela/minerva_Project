import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final Color? backgroundColor;

  const LoadingIndicator({super.key, 
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    //final _bgColor = backgroundColor ?? Colors.blue;

    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: FittedBox(
          child: CircularProgressIndicator(
            // backgroundColor: _bgColor,
            strokeWidth: 2.0,
          ),
        ),
      ),
    );
  }
}
