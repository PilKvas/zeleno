import 'package:flutter/material.dart';

const TextStyle _baseStyle = TextStyle(
  fontFamily: 'Nunito',
  package: 'uikit',
);

@immutable
final class ZTypography extends ThemeExtension<ZTypography> {
  /// Getting text theme from context.
  static ZTypography of(BuildContext context) =>
      Theme.of(context).extension<ZTypography>()!;

  const ZTypography({
    required this.headline100,
    required this.headline200,
    required this.headline300,
    required this.display,
    required this.action,
    required this.title,
    required this.body,
  });

  ZTypography.based()
      : headline100 = _baseStyle.copyWith(
    fontSize: 34,
    fontWeight: FontWeight.w700,
  ),
        headline200 = _baseStyle.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        headline300 = _baseStyle.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        display = _baseStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        action = _baseStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        title = _baseStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        body = _baseStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        );

  final TextStyle headline100;
  final TextStyle headline200;
  final TextStyle headline300;
  final TextStyle display;
  final TextStyle action;
  final TextStyle title;
  final TextStyle body;

  @override
  ZTypography copyWith({
    TextStyle? headline100,
    TextStyle? headline200,
    TextStyle? headline300,
    TextStyle? display,
    TextStyle? action,
    TextStyle? title,
    TextStyle? body,
  }) {
    return ZTypography(
      headline100: headline100 ?? this.headline100,
      headline200: headline200 ?? this.headline200,
      headline300: headline300 ?? this.headline300,
      display: display ?? this.display,
      action: action ?? this.action,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  ThemeExtension<ZTypography> lerp(
      ThemeExtension<ZTypography>? other,
      double t,
      ) {
    if (other is! ZTypography) {
      return this;
    }

    return copyWith(
      headline100: TextStyle.lerp(headline100, other.headline100, t)!,
      headline200: TextStyle.lerp(headline200, other.headline200, t)!,
      headline300: TextStyle.lerp(headline300, other.headline300, t)!,
      display: TextStyle.lerp(display, other.display, t)!,
      action: TextStyle.lerp(action, other.action, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
    );
  }
}
