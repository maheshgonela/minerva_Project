part of widgets;

class SimpleListTile extends StatelessWidget {
  const SimpleListTile({
    super.key,
    required this.context,
    required this.title,
    this.subtitle,
    required this.onTap,
    this.trailing = fortrailing,
  });

  final BuildContext context;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final Widget trailing;

  static const Widget fortrailing = SizedBox(
    width: 0,
    height: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        // side: BorderSide(width: 1.5),
      ),
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          //backgroundColor: Theme.of(context).primaryColorLight,
          child: Text(
            title.characters.first,
            // style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFeatures: [
              const FontFeature.oldstyleFigures(),
              const FontFeature.slashedZero(),
            ],
          ),
        ),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: trailing,
      ),
    );
  }
}
