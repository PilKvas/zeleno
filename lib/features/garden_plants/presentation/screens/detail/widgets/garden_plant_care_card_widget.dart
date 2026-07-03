import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class GardenPlantCareCardWidget extends StatelessWidget {
  const GardenPlantCareCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final Color iconBackground = Color.alphaBlend(
      colors.secondaryText.withValues(alpha: 0.12),
      colors.surface,
    );
    return Container(
      width: 108,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.alphaBlend(
            colors.secondaryText.withValues(alpha: 0.12),
            colors.background,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: colors.brand, size: 20),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: typography.title.copyWith(color: colors.onBackground),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: typography.caption.copyWith(color: colors.brand),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
