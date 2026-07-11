import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/widgets/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

/// Заглушка вкладки «Мой сад» для неавторизованного пользователя.
class GardenUnauthorizedView extends StatelessWidget {
  const GardenUnauthorizedView({super.key});

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: PlantRoomsUnauthorizedBanner(
            description: context.l10n.gardenUnauthorizedDescription,
            onGoToProfile: () =>
                AutoTabsRouter.of(context).setActiveTab(HomeTab.profile),
          ),
        ),
      ),
    );
  }
}
