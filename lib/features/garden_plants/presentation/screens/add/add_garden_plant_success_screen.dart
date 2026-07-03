import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/list/cubit/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/button/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

@RoutePage()
class AddGardenPlantSuccessScreen extends StatelessWidget {
  const AddGardenPlantSuccessScreen({
    super.key,
    required this.speciesSlug,
    required this.customName,
    required this.roomName,
    this.imageUploadFailed = false,
  });

  final String speciesSlug;
  final String customName;
  final String roomName;
  final bool imageUploadFailed;

  Future<void> _goToGarden(BuildContext context) async {
    final GardenPlantsListCubit gardenPlantsListCubit =
        injection<GardenPlantsListCubit>();
    final PlantRoomsCubit plantRoomsCubit = injection<PlantRoomsCubit>();
    final AuthStatus authStatus = context.read<AuthCubit>().state.authStatus;
    context.router.popUntilRouteWithName(PlantsSearchRoute.name);
    AutoTabsRouter.of(context).setActiveIndex(0);
    await Future.wait(<Future<void>>[
      gardenPlantsListCubit.selectRoom(null),
      plantRoomsCubit.loadRoomsIfAuthorized(authStatus),
    ]);
  }

  void _closeToPlantDetails(BuildContext context) {
    context.router.popUntilRouteWithName(PlantDetailsRoute.name);
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 29),
              Expanded(
                child: Image.asset(
                  ZImages.woollyTakingCareOfPlants31,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                context.l10n.addGardenPlantSuccessTitle,
                textAlign: TextAlign.center,
                style: typography.headline200.copyWith(
                  fontSize: 22,
                  height: 1.3,
                  color: const Color(0xFF1D1717),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                context.l10n.addGardenPlantSuccessDescription,
                textAlign: TextAlign.center,
                style: typography.body.copyWith(
                  fontSize: 15,
                  height: 21.3 / 15,
                  letterSpacing: -0.3,
                  color: colorScheme.onBackground,
                ),
              ),
              if (imageUploadFailed) ...<Widget>[
                const SizedBox(height: 12),
                Text(
                  context.l10n.addGardenPlantImageUploadFailed,
                  textAlign: TextAlign.center,
                  style: typography.body.copyWith(
                    color: colorScheme.error,
                  ),
                ),
              ],
              const SizedBox(height: 32),
              ZButton.gradient1(
                onPressed: () => _goToGarden(context),
                child: Text(context.l10n.addGardenPlantGoToGarden),
              ),
              const SizedBox(height: 14),
              ZButton.secondary(
                onPressed: () => _closeToPlantDetails(context),
                child: Text(context.l10n.addGardenPlantClose),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
