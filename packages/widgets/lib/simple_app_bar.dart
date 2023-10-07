part of widgets;

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final bool centerTitle;
  final PreferredSizeWidget bottom;

  final List<Widget> actions;

  SimpleAppBar({
    required this.height,
    required this.title,
    required this.centerTitle,
    this.bottom = forbottom,
    this.actions = foractions,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  static const PreferredSizeWidget forbottom = PreferredSize(
    preferredSize: Size.fromHeight(0),
    child: SizedBox(),
  );
  static const List<Widget> foractions = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      leading: GoBackIcon(icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      title: Text(
        title,
        style: GoogleFonts.istokWeb(
            textStyle: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold)),
      ),
      iconTheme: const IconThemeData(
        size: 30,
      ),
      bottom: bottom,
      actions: actions,
    );
  }
}
