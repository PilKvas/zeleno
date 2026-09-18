import 'package:flutter/material.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

/// Переход к заметкам растения; стиль как у карточек ухода.
class GardenPlantNotesTileWidget extends StatelessWidget {
  const GardenPlantNotesTileWidget({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final Color iconBackground = Color.alphaBlend(
      colors.secondaryText.withValues(alpha: 0.12),
      colors.surface,
    );
    return ZPressable(
      onTap: onTap,
      child: Container(
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
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: iconBackground,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.sticky_note_2_outlined,
                color: colors.brand,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: <Widget>[
                  Text(
                    context.l10n.gardenPlantNotesTile,
                    style: typography.title.copyWith(
                      color: colors.onBackground,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    context.l10n.gardenPlantNotesTileSubtitle,
                    style: typography.caption.copyWith(color: colors.brand),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: colors.secondaryText),
          ],
        ),
      ),
    );
  }
}
