import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferenceUtils {
  static late SharedPreferences sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> SetData(
      {required String key, required dynamic value}) async {
    if (value is String) {
      await sharedPreferences.setString(key, value);
    } else if (value is int) {
      await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      await sharedPreferences.setDouble(key, value);
      
    } else {
      await sharedPreferences.setBool(key, value);
    }
  }

  static Future<Object?> getData({required String key}) async {
    return sharedPreferences.get(key)??null;
  }

  static Future<bool?> deleteData({required String key}) async {
    await sharedPreferences.remove(key);
  }
}
