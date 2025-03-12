import 'package:flutter/material.dart';

/// Brand color scheme of the application.
///
/// The extension is synchronized with the base [ThemeData] and [ColorScheme].
///
/// Example of use:
///
/// ```dart
/// final colorScheme = ColorScheme.of(context);
///
/// return Container(color: colorScheme.primary);
/// ```
@immutable
final class ZColorScheme extends ThemeExtension<ZColorScheme> {
  /// Getting the color theme from the context.
  static ZColorScheme of(BuildContext context) =>
      Theme.of(context).extension<ZColorScheme>()!;

  /// Basic light scheme.
  const ZColorScheme.light({
    this.brightness = Brightness.light,
    this.brand = const Color(0xFF000000),
    this.onBrand = const Color(0xFFFFFFFF),
    this.background = const Color(0xFFFFFFFF),
    this.onBackground = const Color(0xFF000000),
    this.surface = const Color(0xFFFFFFFF),
    this.onSurface = const Color(0xFF000000),
    this.action = const Color(0xFFBF7152),
    this.onAction = const Color(0xFFFFFFFF),
    this.actionSecondary = const Color(0xFF8EAD9A),
    this.onActionSecondary = const Color(0xFFFFFFFF),
  });

  /// Basic dark scheme.
  const ZColorScheme.dark({
    this.brightness = Brightness.dark,
    this.brand = const Color(0xFF000000),
    this.onBrand = const Color(0xFFFFFFFF),
    this.background = const Color(0xFFFFFFFF),
    this.onBackground = const Color(0xFF000000),
    this.surface = const Color(0xFFFFFFFF),
    this.onSurface = const Color(0xFF000000),
    this.action = const Color(0xFF000000),
    this.onAction = const Color(0xFFFFFFFF),
    this.actionSecondary = const Color(0xFF60fc9c),
    this.onActionSecondary = const Color(0xFF000000),
  });

  const ZColorScheme({
    required this.brightness,
    required this.brand,
    required this.onBrand,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.action,
    required this.onAction,
    required this.actionSecondary,
    required this.onActionSecondary,
  });

  final Brightness brightness;

  final Color brand;
  final Color onBrand;

  final Color background;
  final Color onBackground;

  final Color surface;
  final Color onSurface;

  final Color action;
  final Color onAction;

  final Color actionSecondary;
  final Color onActionSecondary;

  @override
  ThemeExtension<ZColorScheme> copyWith({
    Brightness? brightness,
    Color? brand,
    Color? onBrand,
    Color? background,
    Color? onBackground,
    Color? surface,
    Color? onSurface,
    Color? action,
    Color? onAction,
    Color? actionSecondary,
    Color? onActionSecondary,
  }) {
    return ZColorScheme(
      brightness: brightness ?? this.brightness,
      brand: brand ?? this.brand,
      onBrand: onBrand ?? this.onBrand,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      action: action ?? this.action,
      onAction: onAction ?? this.onAction,
      actionSecondary: actionSecondary ?? this.actionSecondary,
      onActionSecondary: onActionSecondary ?? this.onActionSecondary,
    );
  }

  @override
  ThemeExtension<ZColorScheme> lerp(
      ThemeExtension<ZColorScheme>? other,
      double t,
      ) {
    if (other is! ZColorScheme) {
      return this;
    }

    return copyWith(
      brand: Color.lerp(brand, other.brand, t),
      onBrand: Color.lerp(onBrand, other.onBrand, t),
      background: Color.lerp(background, other.background, t),
      onBackground: Color.lerp(onBackground, other.onBackground, t),
      surface: Color.lerp(surface, other.surface, t),
      onSurface: Color.lerp(onSurface, other.onSurface, t),
      action: Color.lerp(action, other.action, t),
      onAction: Color.lerp(onAction, other.onAction, t),
      actionSecondary: Color.lerp(actionSecondary, other.actionSecondary, t),
      onActionSecondary:
      Color.lerp(onActionSecondary, other.onActionSecondary, t),
    );
  }
}
