import 'dart:convert';
import 'package:love_community_chapel/features/auth/data/models/user-model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  final SharedPreferences _preferences;

  LocalStorage(this._preferences);

  // Clear Local Storage
  Future<void> clear() async {
    await _preferences.clear();
  }

  // ? SETTERS
  // Set User
  Future<void> setUser(Map<String, dynamic> user) async {
    var jsonUser = jsonEncode(user);
    await _preferences.setString('user', jsonUser);
  }

  // ? GETTERS
  // Get User
  UserModel? getUser() {
    var jsonUser = _preferences.getString('user');
    if (jsonUser != null) {
      return UserModel.fromJson(jsonDecode(jsonUser));
    }
    return null;
  }
}
