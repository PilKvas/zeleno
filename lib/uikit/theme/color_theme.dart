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
    this.background = const Color(0xFFF8F8FC),
    this.onBackground = const Color(0xFF000000),
    this.surface = const Color(0xFFFFFFFF),
    this.onSurface = const Color(0xFF000000),
    this.action = const Color(0xFFBF7152),
    this.onAction = const Color(0xFFFFFFFF),
    this.actionSecondary = const Color(0xFF8EAD9A),
    this.onActionSecondary = const Color(0xFFFFFFFF),
    this.secondaryText = const Color(0xFF6F6F6F),
    this.error = const Color(0xFFB3261E),
    this.onError = const Color(0xFFFFFFFF),
  });

  /// Basic dark scheme.
  const ZColorScheme.dark({
    this.brightness = Brightness.dark,
    this.brand = const Color(0xFFE8E8E8),
    this.onBrand = const Color(0xFF1E1E1E),
    this.background = const Color(0xFF121212),
    this.onBackground = const Color(0xFFF0F0F0),
    this.surface = const Color(0xFF1E1E1E),
    this.onSurface = const Color(0xFFF0F0F0),
    this.action = const Color(0xFFBF7152),
    this.onAction = const Color(0xFFFFFFFF),
    this.actionSecondary = const Color(0xFF9BC4A8),
    this.onActionSecondary = const Color(0xFF121212),
    this.secondaryText = const Color(0xFFB0B0B0),
    this.error = const Color(0xFFFFB4AB),
    this.onError = const Color(0xFF601410),
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
    required this.secondaryText,
    required this.error,
    required this.onError,
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

  final Color secondaryText;

  final Color error;

  final Color onError;

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
    Color? secondaryText,
    Color? error,
    Color? onError,
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
      secondaryText: secondaryText ?? this.secondaryText,
      error: error ?? this.error,
      onError: onError ?? this.onError,
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
        secondaryText: Color.lerp(secondaryText, other.secondaryText, t),
        error: Color.lerp(error, other.error, t),
        onError: Color.lerp(onError, other.onError, t));
  }
}
