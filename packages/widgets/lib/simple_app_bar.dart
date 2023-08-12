part of widgets;

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final bool centerTitle;
  final PreferredSizeWidget bottom;

  SimpleAppBar({
    required this.height,
    required this.title,
    this.centerTitle = true,
    required this.bottom,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.0,
      centerTitle: centerTitle,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.keyboard_backspace,
        ),
      ),
      title: Text(title),
      bottom: bottom,
    );
  }
}
