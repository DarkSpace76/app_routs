import 'package:zwork/db/model/user.dart';

User? user;
//LocationService locationService = LocationService();
//final messaging = Messaging.instance;
List<String> userBookmarks = [];
String? localeApp;
//LocalNotification localNotification = LocalNotification();
List<Map<String, String>> activitiesApp = [];
List<Map<String, String>> langsApp = [];
List<Map<String, String>> timeWorkApp = [];
List<Map<String, String>> jobTitlesApp = [];

class UserType {
  static const int company = 1;
  static const int employee = 2;
}
