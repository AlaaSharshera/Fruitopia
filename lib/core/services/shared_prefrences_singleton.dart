import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
static late  SharedPreferences sharedPreferencesInstance;

  static Future<void> init() async {
    sharedPreferencesInstance = await SharedPreferences.getInstance();
  }

  static setBool (String key, bool value) {
    sharedPreferencesInstance.setBool(key, value);
  }

  static bool getBool(String key) {
    return sharedPreferencesInstance.getBool(key) ?? false;
  }

  static setString(String key, String value) {
    sharedPreferencesInstance.setString(key, value);
  }
  static String getString(String key) {
    return sharedPreferencesInstance.getString(key) ?? '';
  }
}