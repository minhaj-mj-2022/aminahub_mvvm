import 'package:shared_preferences/shared_preferences.dart';

const String userLocationKey = 'user_location';

Future<void> saveUserLocationLocal(String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(userLocationKey, value);
}

Future<String?> getUserLocationLocal() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(userLocationKey);
}
