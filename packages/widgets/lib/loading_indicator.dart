import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final Color? backgroundColor;

  LoadingIndicator({
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    var _bgColor = backgroundColor ?? Colors.blue;

    return Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: FittedBox(
          child: CircularProgressIndicator(
            backgroundColor: _bgColor,
            strokeWidth: 2.0,
          ),
        ),
      ),
    );
  }
}
