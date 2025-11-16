
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_constants.dart';

class StorageService {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // User-related helpers
  static Future<void> saveUser({
    required int userId,
    required String name,
    required String email,
    required String token,
  }) async {
    await _prefs.setInt(AppConstants.userId, userId);
    await _prefs.setString(AppConstants.name, name);
    await _prefs.setString(AppConstants.email, email);
    await _prefs.setString(AppConstants.token, token);
  }

  static String? get userId => _prefs.getString(AppConstants.userId);
  static String? get name => _prefs.getString(AppConstants.name);
  static String? get email => _prefs.getString(AppConstants.email);
  static String? get token => _prefs.getString(AppConstants.token);

  static bool get isLoggedIn => _prefs.containsKey(AppConstants.token);

  static Future<void> clear() async => await _prefs.clear();

  // Generic setters
  static Future<void> setString(String key, String value) async =>
      await _prefs.setString(key, value);
  static Future<void> setBool(String key, bool value) async =>
      await _prefs.setBool(key, value);
  static Future<void> setInt(String key, int value) async =>
      await _prefs.setInt(key, value);
  static Future<void> setDouble(String key, double value) async =>
      await _prefs.setDouble(key, value);
  static Future<void> setStringList(String key, List<String> value) async =>
      await _prefs.setStringList(key, value);

  // Generic getters
  static String? getString(String key) => _prefs.getString(key);
  static bool? getBool(String key) => _prefs.getBool(key);
  static int? getInt(String key) => _prefs.getInt(key);
  static double? getDouble(String key) => _prefs.getDouble(key);
  static List<String>? getStringList(String key) => _prefs.getStringList(key);

  static bool containsKey(String key) => _prefs.containsKey(key);
  static Future<void> remove(String key) async => await _prefs.remove(key);
}

