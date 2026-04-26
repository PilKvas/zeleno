import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';

enum SnackBarType { error, success, info }

class CustomSnackBar {
  static void show({
    required BuildContext context,
    required String message,
    SnackBarType type = SnackBarType.info,
    Duration duration = const Duration(seconds: 5),
  }) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final Color backgroundColor = _backgroundColorForType(type, colors);
    final Color contentColor = _contentColorForType(type, colors);
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(
            _getIconForType(type),
            color: contentColor,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              message,
              style: TextStyle(color: contentColor),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(16),
      duration: duration,
      action: SnackBarAction(
        label: 'Закрыть',
        textColor: contentColor,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static IconData _getIconForType(SnackBarType type) {
    switch (type) {
      case SnackBarType.error:
        return Icons.error_outline;
      case SnackBarType.success:
        return Icons.check_circle_outline;
      case SnackBarType.info:
        return Icons.info_outline;
    }
  }

  static Color _backgroundColorForType(
    SnackBarType type,
    ZColorScheme colors,
  ) {
    switch (type) {
      case SnackBarType.error:
        return colors.error;
      case SnackBarType.success:
        return colors.actionSecondary;
      case SnackBarType.info:
        return colors.action;
    }
  }

  static Color _contentColorForType(SnackBarType type, ZColorScheme colors) {
    switch (type) {
      case SnackBarType.error:
        return colors.onError;
      case SnackBarType.success:
        return colors.onActionSecondary;
      case SnackBarType.info:
        return colors.onAction;
    }
  }
}
