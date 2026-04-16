import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class CharacteristicItemWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const CharacteristicItemWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final Color iconBackground = Color.alphaBlend(
      colors.secondaryText.withValues(alpha: 0.12),
      colors.surface,
    );
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconBackground,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: colors.actionSecondary),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: typography.body.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
