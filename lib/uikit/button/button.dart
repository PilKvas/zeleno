import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/button/pressable.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

/// Варианты кнопки из дизайн-системы (Figma: From-seed).
enum ZButtonVariant {
  /// Основной CTA: зелёный горизонтальный градиент.
  gradient1,

  /// Второй градиент: жёлтый → лайм.
  gradient2,

  /// Третий градиент: тот же зелёный переход с пониженной непрозрачностью.
  gradient3,

  /// Secondary: светлый фон, зелёный текст.
  secondary,

  /// Ghost: прозрачный фон, обводка и текст лайма.
  ghost,
}

/// Кнопка из UI Kit: геометрия и [ZPressable]; цвета из [ZColorScheme].
final class ZButton extends StatelessWidget {
  const ZButton._({
    super.key,
    required this.child,
    this.onPressed,
    required this.variant,
    this.height = 46,
  });

  const ZButton.gradient1({
    Key? key,
    required Widget child,
    VoidCallback? onPressed,
    double? height = 46,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          variant: ZButtonVariant.gradient1,
          height: height,
        );

  const ZButton.gradient2({
    Key? key,
    required Widget child,
    VoidCallback? onPressed,
    double? height = 46,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          variant: ZButtonVariant.gradient2,
          height: height,
        );

  const ZButton.gradient3({
    Key? key,
    required Widget child,
    VoidCallback? onPressed,
    double? height = 46,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          variant: ZButtonVariant.gradient3,
          height: height,
        );

  const ZButton.secondary({
    Key? key,
    required Widget child,
    VoidCallback? onPressed,
    double? height = 46,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          variant: ZButtonVariant.secondary,
          height: height,
        );

  const ZButton.ghost({
    Key? key,
    required Widget child,
    VoidCallback? onPressed,
    double? height = 46,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          variant: ZButtonVariant.ghost,
          height: height,
        );

  final Widget child;

  final VoidCallback? onPressed;

  final ZButtonVariant variant;

  final double? height;

  static const EdgeInsets _padding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 0);

  static const BorderRadius _radius = BorderRadius.all(Radius.circular(10));

  static const double _mutedGradientAlpha = 0.6;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final typography = ZTypography.of(context);
    final bool isEnabled = onPressed != null;
    final TextStyle labelStyle = typography.action.copyWith(
      color: _foregroundForVariant(colors),
    );
    final Widget labeledChild = DefaultTextStyle(
      style: labelStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      child: Center(child: child),
    );
    final BoxDecoration decoration = _decoration(colors);
    final Widget core = Container(
      height: height,
      padding: _padding,
      decoration: decoration,
      child: labeledChild,
    );
    final Widget wrapped =
        isEnabled ? core : Opacity(opacity: 0.55, child: core);
    return ZPressable(
      onTap: onPressed,
      child: wrapped,
    );
  }

  Color _foregroundForVariant(ZColorScheme colors) {
    return switch (variant) {
      ZButtonVariant.gradient1 ||
      ZButtonVariant.gradient3 =>
        colors.secondaryBg,
      ZButtonVariant.gradient2 => colors.mainGradientColor,
      ZButtonVariant.secondary => colors.secondaryTextColor,
      ZButtonVariant.ghost => colors.mainGradientColor2,
    };
  }

  BoxDecoration _decoration(ZColorScheme colors) {
    return switch (variant) {
      ZButtonVariant.gradient1 => BoxDecoration(
          borderRadius: _radius,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              colors.mainGradientColor,
              colors.mainGradientColor2,
            ],
          ),
        ),
      ZButtonVariant.gradient2 => BoxDecoration(
          borderRadius: _radius,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              colors.secondaryGradientColor,
              colors.mainGradientColor2,
            ],
          ),
        ),
      ZButtonVariant.gradient3 => BoxDecoration(
          borderRadius: _radius,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              colors.mainGradientColor.withValues(alpha: _mutedGradientAlpha),
              colors.mainGradientColor2.withValues(alpha: _mutedGradientAlpha),
            ],
          ),
        ),
      ZButtonVariant.secondary => BoxDecoration(
          color: colors.secondaryBg,
          borderRadius: _radius,
        ),
      ZButtonVariant.ghost => BoxDecoration(
          color: Colors.transparent,
          borderRadius: _radius,
          border: Border.all(color: colors.mainGradientColor2),
        ),
    };
  }
}
