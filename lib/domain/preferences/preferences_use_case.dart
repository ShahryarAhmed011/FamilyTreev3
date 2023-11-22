import 'package:injectable/injectable.dart';
import '../../data/repository/app_prefrences/app_preferences_manager.dart';
import '../base/usecase/synchronous_usecase.dart';

@injectable
class StoreUserNamePreferencesUseCase extends SynchronousUseCase {
  final AppPreferencesManager _appPreferencesManager;

  const StoreUserNamePreferencesUseCase({
    required AppPreferencesManager appPreferencesManager,
  }) : _appPreferencesManager = appPreferencesManager;

  void storeUsername(String name) {
    _appPreferencesManager.storeUserName(name);
  }

  String getUsername() {
    return _appPreferencesManager.getUserName();
  }

}