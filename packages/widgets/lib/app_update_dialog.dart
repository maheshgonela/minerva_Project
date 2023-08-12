part of widgets;

class AppUpdateDialog extends StatelessWidget {
  final String appName;
  final String packageName;
  AppUpdateDialog({required this.appName, required this.packageName});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('App Update'),
      content: Text(
        'New version of $appName is available in Play Store. Please update the app to continue.',
      ),
      actions: [
        ElevatedButton.icon(
          icon: Icon(Icons.launch),
          label: Text('Open PlayStore'),
          onPressed: () async {
            launchPlayStore(packageName);
          },
        ),
      ],
    );
  }
}

void launchPlayStore(String appId) async {
  var url = "https://play.google.com/store/apps/details?id=$appId&hl=en";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
