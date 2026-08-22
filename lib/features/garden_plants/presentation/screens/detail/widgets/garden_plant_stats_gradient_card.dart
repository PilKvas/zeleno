import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class GardenPlantStatsGradientCard extends StatelessWidget {
  const GardenPlantStatsGradientCard({
    super.key,
    required this.ageText,
    required this.spreadText,
    required this.heightText,
  });

  final String ageText;
  final String spreadText;
  final String heightText;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: <Color>[colors.mainGradientColor, colors.mainGradientColor2],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _StatItem(icon: Icons.access_time, text: ageText),
          _StatItem(icon: Icons.width_normal, text: spreadText),
          _StatItem(icon: Icons.height, text: heightText),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final ZTypography typography = ZTypography.of(context);
    final Color onGradient = ZColorScheme.of(context).onBrand;
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: onGradient.withValues(alpha: 0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: onGradient, size: 20),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          textAlign: TextAlign.center,
          style: typography.body.copyWith(fontSize: 12, color: onGradient),
        ),
      ],
    );
  }
}
