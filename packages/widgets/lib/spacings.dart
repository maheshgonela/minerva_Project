part of widgets;

class VS extends StatelessWidget {
  final double height;

  const VS(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class HS extends StatelessWidget {
  final double width;

  const HS(this.width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
