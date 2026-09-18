import 'package:flutter/material.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

/// Возраст / ширина / высота на градиенте. Отсутствующее значение показываем
/// приглушённым «—», подпись остаётся — иначе иконки нечитаемы.
class GardenPlantStatsGradientCard extends StatelessWidget {
  const GardenPlantStatsGradientCard({
    super.key,
    required this.ageText,
    required this.spreadText,
    required this.heightText,
  });

  final String? ageText;
  final String? spreadText;
  final String? heightText;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: <Color>[colors.mainGradientColor, colors.mainGradientColor2],
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: _StatItem(
              icon: Icons.access_time,
              label: l10n.gardenPlantStatAge,
              value: ageText,
            ),
          ),
          Expanded(
            child: _StatItem(
              icon: Icons.width_normal,
              label: l10n.gardenPlantStatSpread,
              value: spreadText,
            ),
          ),
          Expanded(
            child: _StatItem(
              icon: Icons.height,
              label: l10n.gardenPlantStatHeight,
              value: heightText,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final ZTypography typography = ZTypography.of(context);
    final Color onGradient = ZColorScheme.of(context).onBrand;
    final bool hasValue = value != null;
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
        const SizedBox(height: 6),
        Text(
          value ?? '—',
          textAlign: .center,
          style: typography.title.copyWith(
            color: hasValue ? onGradient : onGradient.withValues(alpha: 0.6),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          textAlign: .center,
          style: typography.caption.copyWith(
            color: onGradient.withValues(alpha: 0.85),
          ),
        ),
      ],
    );
  }
}
