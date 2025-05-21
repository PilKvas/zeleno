import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/i_first_run_storage.dart';

class FirstRunStorage implements IFirstRunStorage {
  final SharedPreferences _prefs;

  const FirstRunStorage(this._prefs);

  @override
  bool getIsFirstRun() {
    return _prefs.getBool(FirstRunStorageKeys.firstRun.keyName) ?? true;
  }

  @override
  Future<void> setIsFirstRun({required bool value}) =>
      _prefs.setBool(FirstRunStorageKeys.firstRun.keyName, value);
}

enum FirstRunStorageKeys {
  firstRun('first_run');

  final String keyName;

  const FirstRunStorageKeys(this.keyName);
}
