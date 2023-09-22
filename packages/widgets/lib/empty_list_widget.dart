part of widgets;

class EmptyListWidget extends StatelessWidget {
  final String title;
  final VoidCallback onRefresh;

  EmptyListWidget({
    required this.title,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.istokWeb(
                textStyle: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 12,
          ),
          // MinervaButton(onButtonPressed: onRefresh,
          // label: 'REFRESH',)
          ElevatedButton(
              onPressed: () {
                LoadingIndicator();
              },
              child: Text('REFRESH')),
        ],
      ),
    );
  }
}
