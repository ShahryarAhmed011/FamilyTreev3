import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../repository/app_prefrences/app_preferences_data_source.dart';

@Injectable(as: AppPreferencesDataSource)
class AppPreferences implements AppPreferencesDataSource {
  final SharedPreferences _sharedPreferences;
  static const String _storeUserName = "id_user_name_key";

  const AppPreferences({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  @override
  String getUserName() {
    return _sharedPreferences.getString(_storeUserName) ?? "";
  }

  @override
  Future storeUserName(String name) async{
    await _sharedPreferences.setString(_storeUserName, name);
  }
}
