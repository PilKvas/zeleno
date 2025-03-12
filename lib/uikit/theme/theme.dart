import 'package:flutter/material.dart';

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
    return ThemeData(
      brightness: colorScheme.brightness,
      // fontFamily: fontFamily,
      // package: package,
      scaffoldBackgroundColor: colorScheme.background,
      colorScheme: ColorScheme(
        brightness: colorScheme.brightness,
        primary: colorScheme.brand,
        onPrimary: colorScheme.onBrand,
        secondary: colorScheme.brand,
        onSecondary: colorScheme.onBrand,
        error: colorScheme.brand,
        onError: colorScheme.onBrand,
        surface: colorScheme.surface,
        onSurface: colorScheme.onSurface,
      ),
      extensions: [colorScheme, typography, dimensions],
    );
  }
}
