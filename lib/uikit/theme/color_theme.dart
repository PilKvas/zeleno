import 'package:flutter/material.dart';

const Color _kMainGradientColor = Color(0xFF3F6E29);
const Color _kSecondaryTextColor = Color(0xFF7AB061);
const Color _kMainGradientColor2 = Color(0xFF79D24F);
const Color _kSecondaryGradientColor = Color(0xFFF6F56B);
const Color _kSecondaryBg = Color(0xFFF8F8FC);
const Color _kMainBg = Color(0xFFFFFFFF);
const Color _kErrorColor = Color(0xFFC10000);
const Color _kRegularText = Color(0xFF262626);
const Color _kSecondaryTextField = Color(0xFF6F6F6F);

/// Brand color scheme of the application.
///
/// Хранит палитру и выдаёт семантические роли для UI.
@immutable
final class ZColorScheme extends ThemeExtension<ZColorScheme> {
  /// Получение темы из контекста.
  static ZColorScheme of(BuildContext context) =>
      Theme.of(context).extension<ZColorScheme>()!;

  /// Светлая тема.
  const ZColorScheme.light({
    Brightness brightness = Brightness.light,
    Color mainGradientColor = _kMainGradientColor,
    Color secondaryTextColor = _kSecondaryTextColor,
    Color mainGradientColor2 = _kMainGradientColor2,
    Color secondaryGradientColor = _kSecondaryGradientColor,
    Color secondaryBg = _kSecondaryBg,
    Color mainBg = _kMainBg,
    Color errorColor = _kErrorColor,
    Color regularTextColor = _kRegularText,
    Color secondaryTextFieldColor = _kSecondaryTextField,
  }) : this._(
         brightness: brightness,
         mainGradientColor: mainGradientColor,
         secondaryTextColor: secondaryTextColor,
         mainGradientColor2: mainGradientColor2,
         secondaryGradientColor: secondaryGradientColor,
         secondaryBg: secondaryBg,
         mainBg: mainBg,
         errorColor: errorColor,
         regularTextColor: regularTextColor,
         secondaryTextFieldColor: secondaryTextFieldColor,
       );

  /// Тёмная тема (те же токены палитры, иная семантика фона/текста).
  const ZColorScheme.dark({
    Brightness brightness = Brightness.dark,
    Color mainGradientColor = _kMainGradientColor,
    Color secondaryTextColor = _kSecondaryTextColor,
    Color mainGradientColor2 = _kMainGradientColor2,
    Color secondaryGradientColor = _kSecondaryGradientColor,
    Color secondaryBg = _kSecondaryBg,
    Color mainBg = _kMainBg,
    Color errorColor = _kErrorColor,
    Color regularTextColor = _kRegularText,
    Color secondaryTextFieldColor = _kSecondaryTextField,
  }) : this._(
         brightness: brightness,
         mainGradientColor: mainGradientColor,
         secondaryTextColor: secondaryTextColor,
         mainGradientColor2: mainGradientColor2,
         secondaryGradientColor: secondaryGradientColor,
         secondaryBg: secondaryBg,
         mainBg: mainBg,
         errorColor: errorColor,
         regularTextColor: regularTextColor,
         secondaryTextFieldColor: secondaryTextFieldColor,
       );

  const ZColorScheme._({
    required this.brightness,
    required this.mainGradientColor,
    required this.secondaryTextColor,
    required this.mainGradientColor2,
    required this.secondaryGradientColor,
    required this.secondaryBg,
    required this.mainBg,
    required this.errorColor,
    required this.regularTextColor,
    required this.secondaryTextFieldColor,
  });

  final Brightness brightness;

  /// #3F6E29
  final Color mainGradientColor;

  /// #7AB061
  final Color secondaryTextColor;

  /// #79D24F
  final Color mainGradientColor2;

  /// #F6F56B
  final Color secondaryGradientColor;

  /// #F8F8FC
  final Color secondaryBg;

  /// Основной фон экранов (белый).
  final Color mainBg;

  /// #C10000
  final Color errorColor;

  /// #262626 — основной текст на светлых поверхностях.
  final Color regularTextColor;

  /// #6F6F6F — Secondary Text: текст и подсказка в полях ввода.
  final Color secondaryTextFieldColor;

  // --- Семантика (собрана из палитры) ---

  Color get brand => mainGradientColor;

  Color get onBrand => secondaryBg;

  Color get background => mainBg;

  Color get onBackground =>
      brightness == Brightness.dark ? secondaryBg : regularTextColor;

  Color get surface =>
      brightness == Brightness.dark ? secondaryTextColor : secondaryBg;

  Color get onSurface =>
      brightness == Brightness.dark ? secondaryBg : regularTextColor;

  Color get action => brightness == Brightness.dark
      ? secondaryGradientColor
      : mainGradientColor2;

  Color get onAction =>
      brightness == Brightness.dark ? mainGradientColor : secondaryBg;

  Color get actionSecondary => secondaryTextColor;

  Color get onActionSecondary => secondaryBg;

  /// Алиас для приглушённого текста (то же, что [secondaryTextColor]).
  Color get secondaryText => secondaryTextColor;

  Color get error => errorColor;

  Color get onError => secondaryBg;

  @override
  ZColorScheme copyWith({
    Brightness? brightness,
    Color? mainGradientColor,
    Color? secondaryTextColor,
    Color? mainGradientColor2,
    Color? secondaryGradientColor,
    Color? secondaryBg,
    Color? mainBg,
    Color? errorColor,
    Color? regularTextColor,
    Color? secondaryTextFieldColor,
  }) {
    return ZColorScheme._(
      brightness: brightness ?? this.brightness,
      mainGradientColor: mainGradientColor ?? this.mainGradientColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      mainGradientColor2: mainGradientColor2 ?? this.mainGradientColor2,
      secondaryGradientColor:
          secondaryGradientColor ?? this.secondaryGradientColor,
      secondaryBg: secondaryBg ?? this.secondaryBg,
      mainBg: mainBg ?? this.mainBg,
      errorColor: errorColor ?? this.errorColor,
      regularTextColor: regularTextColor ?? this.regularTextColor,
      secondaryTextFieldColor:
          secondaryTextFieldColor ?? this.secondaryTextFieldColor,
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
    return ZColorScheme._(
      brightness: t < 0.5 ? brightness : other.brightness,
      mainGradientColor: Color.lerp(
        mainGradientColor,
        other.mainGradientColor,
        t,
      )!,
      secondaryTextColor: Color.lerp(
        secondaryTextColor,
        other.secondaryTextColor,
        t,
      )!,
      mainGradientColor2: Color.lerp(
        mainGradientColor2,
        other.mainGradientColor2,
        t,
      )!,
      secondaryGradientColor: Color.lerp(
        secondaryGradientColor,
        other.secondaryGradientColor,
        t,
      )!,
      secondaryBg: Color.lerp(secondaryBg, other.secondaryBg, t)!,
      mainBg: Color.lerp(mainBg, other.mainBg, t)!,
      errorColor: Color.lerp(errorColor, other.errorColor, t)!,
      regularTextColor: Color.lerp(
        regularTextColor,
        other.regularTextColor,
        t,
      )!,
      secondaryTextFieldColor: Color.lerp(
        secondaryTextFieldColor,
        other.secondaryTextFieldColor,
        t,
      )!,
    );
  }
}
