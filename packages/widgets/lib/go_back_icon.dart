part of widgets;

class GoBackIcon extends StatelessWidget {
  final Icon icon;

  GoBackIcon({this.icon = const Icon(Icons.keyboard_backspace)});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: icon,
    );
  }
}
