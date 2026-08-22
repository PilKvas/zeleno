import 'package:flutter/material.dart';

const TextStyle _baseStyle = TextStyle(fontFamily: 'Nunito');

@immutable
final class ZTypography extends ThemeExtension<ZTypography> {
  /// Getting text theme from context.
  static ZTypography of(BuildContext context) =>
      Theme.of(context).extension<ZTypography>()!;

  const ZTypography({
    required this.headline100,
    required this.headline200,
    required this.headline300,
    required this.headline400,
    required this.screenTitle,
    required this.display,
    required this.action,
    required this.title,
    required this.largeTitle,
    required this.body,
    required this.caption,
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
      headline400 = _baseStyle.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.3,
      ),
      screenTitle = _baseStyle.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      display = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
      action = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
      title = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
      largeTitle = _baseStyle.copyWith(
        fontSize: 26,
        fontWeight: FontWeight.w700,
      ),
      body = _baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
      caption = _baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400);

  final TextStyle headline100;
  final TextStyle headline200;
  final TextStyle headline300;

  /// 17 / w600, letterSpacing -0.3 — заголовки карточек и выбранных чипов.
  final TextStyle headline400;

  /// 28 / w700 — крупный заголовок экрана.
  final TextStyle screenTitle;
  final TextStyle display;
  final TextStyle action;
  final TextStyle title;
  final TextStyle largeTitle;
  final TextStyle body;

  /// 12 / w400 — подписи и вспомогательный текст.
  final TextStyle caption;

  @override
  ZTypography copyWith({
    TextStyle? headline100,
    TextStyle? headline200,
    TextStyle? headline300,
    TextStyle? headline400,
    TextStyle? screenTitle,
    TextStyle? display,
    TextStyle? action,
    TextStyle? title,
    TextStyle? largeTitle,
    TextStyle? body,
    TextStyle? caption,
  }) {
    return ZTypography(
      headline100: headline100 ?? this.headline100,
      headline200: headline200 ?? this.headline200,
      headline300: headline300 ?? this.headline300,
      headline400: headline400 ?? this.headline400,
      screenTitle: screenTitle ?? this.screenTitle,
      display: display ?? this.display,
      action: action ?? this.action,
      title: title ?? this.title,
      largeTitle: largeTitle ?? this.largeTitle,
      body: body ?? this.body,
      caption: caption ?? this.caption,
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
      headline400: TextStyle.lerp(headline400, other.headline400, t)!,
      screenTitle: TextStyle.lerp(screenTitle, other.screenTitle, t)!,
      display: TextStyle.lerp(display, other.display, t)!,
      action: TextStyle.lerp(action, other.action, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
    );
  }
}
