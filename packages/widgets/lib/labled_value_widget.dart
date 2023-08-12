part of widgets;

class LabledValueWidget extends StatelessWidget {
  final String lable;
  final String value;

  const LabledValueWidget(this.lable, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            // color: Colors.grey,
            fontSize: 12,
          ),
        ),
        const VS(12),
        Text(value),
      ],
    );
  }
}
