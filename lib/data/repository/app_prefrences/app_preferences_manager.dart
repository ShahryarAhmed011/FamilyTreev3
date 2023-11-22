import 'package:injectable/injectable.dart';

import 'app_preferences_data_source.dart';

@singleton
class AppPreferencesManager {
  final AppPreferencesDataSource _appPreferencesDataSource;

  const AppPreferencesManager({
    required AppPreferencesDataSource appPreferencesDataSource})
      : _appPreferencesDataSource = appPreferencesDataSource;

  void storeUserName(String name) {
    _appPreferencesDataSource.storeUserName(name);
  }

  String getUserName() {
    return _appPreferencesDataSource.getUserName();
  }

}
