import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHandler {
  static late SharedPreferences _preferences;
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static const _keyIsLogin = "isLogin";
  static Future<void> setLogin(bool isLogin) async {
    await _preferences.setBool(_keyIsLogin, isLogin);
  }

  static bool get isLogin {
    return _preferences.getBool(_keyIsLogin) ?? false;
  }

  static Future<void> logOut() async {
    await _preferences.remove(_keyIsLogin);
  }
}
