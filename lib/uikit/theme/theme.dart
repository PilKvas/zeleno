import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_theme.dart';
import 'dimensions.dart';
import 'typography.dart';

@immutable
final class ZTheme {
  final ZColorScheme colorScheme;

  final ZTypography typography;

  final ZDimensions dimensions;

  const ZTheme({
    required this.colorScheme,
    required this.typography,
    required this.dimensions,
  });

  ThemeData createThemeData() {
    final Brightness themeBrightness = colorScheme.brightness;
    return ThemeData(
      brightness: themeBrightness,
      scaffoldBackgroundColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: ZTheme.statusBarStyleForBrightness(themeBrightness),
      ),
      colorScheme: ColorScheme(
        brightness: themeBrightness,
        primary: colorScheme.brand,
        onPrimary: colorScheme.onBrand,
        secondary: colorScheme.brand,
        onSecondary: colorScheme.onBrand,
        error: colorScheme.error,
        onError: colorScheme.onError,
        surface: colorScheme.surface,
        onSurface: colorScheme.onSurface,
      ),
      extensions: [colorScheme, typography, dimensions],
    );
  }

  static SystemUiOverlayStyle statusBarStyleForBrightness(
      Brightness brightness) {
    final bool isDark = brightness == Brightness.dark;
    return SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
      statusBarIconBrightness: isDark ? Brightness.dark : Brightness.light,
    );
  }
}
