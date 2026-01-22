// import 'package:shared_preferences/shared_preferences.dart';

// enum CacheKey { isOnBoardingCompleted, token }

// class CacheService {
//   static Future<void> save<T>(CacheKey key, T value) async {
//     final prefs = await SharedPreferences.getInstance();
//     switch (T) {
//       case const (String):
//         await prefs.setString(key.name, value as String);
//         break;
//       case const (int):
//         await prefs.setInt(key.name, value as int);
//         break;
//       case const (bool):
//         await prefs.setBool(key.name, value as bool);
//         break;
//       case const (double):
//         await prefs.setDouble(key.name, value as double);
//         break;
//       default:
//         await prefs.setString(key.name, value as String);
//     }
//   }

//   static Future<T?> get<T>(CacheKey key) async {
//     final prefs = await SharedPreferences.getInstance();
//     return switch (T) {
//       const (String) => prefs.getString(key.name) as T?,
//       const (int) => prefs.getInt(key.name) as T?,
//       const (bool) => prefs.getBool(key.name) as T?,
//       const (double) => prefs.getDouble(key.name) as T?,
//       _ => prefs.get(key.name) as T?,
//     };
//   }

//   static Future<void> remove(CacheKey key) async {
//     final prefs = await SharedPreferences.getInstance();

//     await prefs.remove(key.name);
//   }

//   static Future<void> clearAll() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.clear();
//   }
// }
