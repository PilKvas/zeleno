import 'package:flutter/material.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class PlantRoomsUnauthorizedBanner extends StatelessWidget {
  const PlantRoomsUnauthorizedBanner({
    super.key,
    required this.onGoToProfile,
  });

  final VoidCallback onGoToProfile;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: colorScheme.actionSecondary),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: colorScheme.onSurface.withValues(alpha: 0.05),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.lock_outline, color: colorScheme.action),
                const SizedBox(width: 8),
                Text(
                  context.l10n.plantRoomsUnauthorizedTitle,
                  style: typography.title,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              context.l10n.plantRoomsUnauthorizedDescription,
              style: typography.body.copyWith(color: colorScheme.secondaryText),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ZButton.gradient1(
                onPressed: onGoToProfile,
                child: Text(context.l10n.plantRoomsGoToProfile),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
