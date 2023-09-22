part of widgets;

class AppErrorWidget extends StatelessWidget {
  final String error;
  final VoidCallback? onRefresh;

  AppErrorWidget({
    required this.error,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            error,
            style: TextStyle(color: Colors.red, fontSize: 22),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12,
          ),
          OutlinedButton(
            onPressed: onRefresh,
            child: Text('REFRESH'),
          )
        ],
      ),
    );
  }
}
