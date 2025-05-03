import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/theme_storage/i_theme_mode_storage.dart';

class ThemeModeStorage implements IThemeModeStorage {
  final SharedPreferences _prefs;

  const ThemeModeStorage(this._prefs);

  @override
  ThemeMode? getThemeMode() {
    final themeName = _prefs.getString(ThemeStorageKeys.mode.keyName);
    if (themeName?.isEmpty ?? true) return null;

    return ThemeMode.values.firstWhereOrNull((e) => e.name == themeName);
  }

  @override
  Future<void> saveThemeMode({required ThemeMode mode}) {
    return _prefs.setString(ThemeStorageKeys.mode.keyName, mode.name);
  }
}

/// Keys for [ThemeModeStorage].
enum ThemeStorageKeys {
  mode('theme_mode');

  final String keyName;

  const ThemeStorageKeys(this.keyName);
}
