import 'package:minerva/log/app_logger.dart';
import 'package:url_launcher/url_launcher.dart';

Future openPhoneApp(String mobileNumber) async {
  assert(mobileNumber.isNotEmpty);

  try {
    await launch("tel://$mobileNumber");
  } catch (e, st) {
    logError(e, st, 'could not open phone app');
  }
}

Future launchPlayStore() async {
  const url = "https://play.google.com/store/apps/details?id=in.easycloud.minerva";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<bool> openGoogleMap(double latitude, double longitude) async {
  try {
    final String mapsUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(mapsUrl)) {
      await launch(mapsUrl);
      return true;
    } else {
      throw 'Could not open the map.';
    }
  } catch (e, st) {
    logError(e, st, 'could not open google maps');
    return false;
  }
}
