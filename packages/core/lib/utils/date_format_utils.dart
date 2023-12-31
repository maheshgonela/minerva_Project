part of core;

String getFriendlyDate(String originalDate) {
  try {
    var date;
    var today = DateTime.now();
    var parsedDate =
        DateTime.parse(originalDate).add(Duration(hours: 5, minutes: 30));

    if (parsedDate.month == today.month && parsedDate.year == today.year) {
      if (parsedDate.day == today.day) {
        date = DateFormat("h:mm a").format(parsedDate);
      } else if (parsedDate.difference(today) == Duration(days: 1)) {
        var format = DateFormat("h:mm a").format(parsedDate);
        date = "Yesterday $format";
      } else {
        date = DateFormat.yMMMd().format(parsedDate);
      }
    } else {
      date = DateFormat.yMMMd().format(parsedDate);
    }
    return date;
  } catch (e) {
    String formattedDate =
        DateFormat.yMMMd().format(DateTime.parse(originalDate));
    return formattedDate;
  }
}
