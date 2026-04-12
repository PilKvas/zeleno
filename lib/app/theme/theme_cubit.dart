import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/theme_storage/i_theme_mode_storage.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit(this._themeModeStorage)
      : super(_themeModeStorage.getThemeMode() ?? ThemeMode.system);

  final IThemeModeStorage _themeModeStorage;

  static bool isDarkTheme({
    required ThemeMode themeMode,
    required Brightness platformBrightness,
  }) {
    return themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            platformBrightness == Brightness.dark);
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    await _themeModeStorage.saveThemeMode(mode: mode);
    emit(mode);
  }

  Future<void> setDarkEnabled(bool isDark) async {
    await setThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
  }
}
