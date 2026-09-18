import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/export.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class PlantNoteCardWidget extends StatelessWidget {
  const PlantNoteCardWidget({super.key, required this.note, this.onTap});

  final PlantNoteModel note;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final String locale = Localizations.localeOf(context).toString();
    final String date = DateFormat.yMMMd(locale).format(note.updatedAt);
    return ZPressable(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
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
          crossAxisAlignment: .start,
          children: <Widget>[
            Row(
              crossAxisAlignment: .start,
              children: <Widget>[
                Expanded(
                  child: Text(
                    note.title,
                    style: typography.headline300.copyWith(
                      color: colors.onBackground,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  date,
                  style: typography.caption.copyWith(
                    color: colors.secondaryText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              note.content,
              style: typography.body.copyWith(color: colors.secondaryText),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
