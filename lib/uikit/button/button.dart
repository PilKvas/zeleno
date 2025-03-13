import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/button/pressable.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

enum ZButtonType { primary, secondary }

class ZButton extends StatelessWidget {
  const ZButton({
    super.key,
    required this.child,
    this.onPressed,
    required this.type,
  });

  const ZButton.primary({
    required this.child,
    this.onPressed,
    super.key,
  }) : type = ZButtonType.primary;

  const ZButton.secondary({
    required this.child,
    this.onPressed,
    super.key,
  }) : type = ZButtonType.secondary;

  final Widget child;

  final VoidCallback? onPressed;

  final ZButtonType type;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ZColorScheme.of(context);
    final typography = ZTypography.of(context);

    final buttonColor = switch (type) {
      ZButtonType.primary => colorScheme.action,
      ZButtonType.secondary => Colors.transparent,
    };

    final textColor = switch (type) {
      ZButtonType.primary => colorScheme.onAction,
      ZButtonType.secondary => colorScheme.actionSecondary,
    };

    final border = switch (type) {
      ZButtonType.primary => null,
      ZButtonType.secondary => Border.all(color: colorScheme.actionSecondary),
    };

    return ZPressable(
      onTap: onPressed,
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: buttonColor,
          border: border,
          borderRadius: BorderRadius.circular(10),
        ),
        child: DefaultTextStyle(
          style: typography.action.copyWith(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          child: Center(child: child),
        ),
      ),
    );
  }
}
