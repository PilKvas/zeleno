import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class TagWidget extends StatelessWidget {
  final String text;

  const TagWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final Color chipFill = Color.alphaBlend(
      colors.secondaryText.withValues(alpha: 0.14),
      colors.surface,
    );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: chipFill,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: typography.body.copyWith(fontSize: 12, color: colors.onSurface),
      ),
    );
  }
}
