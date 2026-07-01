import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/features/auth/domain/model/auth_status.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/plant_room_model.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/repository/i_plant_rooms_repository.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/plant_rooms_cubit.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/plant_rooms_state.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/widgets/plant_room_form_bottom_sheet.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/widgets/plant_rooms_unauthorized_banner.dart';
import 'package:zeleno_v2/l10n/app_localization_x.dart';
import 'package:zeleno_v2/uikit/button/button.dart';
import 'package:zeleno_v2/uikit/loading_widget.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

@RoutePage()
class PlantRoomsSelectionScreen extends StatelessWidget {
  const PlantRoomsSelectionScreen({
    super.key,
    required this.speciesId,
    required this.speciesSlug,
    this.defaultPlantName = '',
  });

  final int speciesId;
  final String speciesSlug;
  final String defaultPlantName;

  @override
  Widget build(BuildContext context) {
    final AuthStatus authStatus = context.read<AuthCubit>().state.authStatus;
    return BlocProvider<PlantRoomsCubit>(
      create: (BuildContext context) => PlantRoomsCubit(
        plantRoomsRepository: injection<IPlantRoomsRepository>(),
      )..loadRoomsIfAuthorized(authStatus),
      child: _PlantRoomsSelectionView(
        speciesId: speciesId,
        speciesSlug: speciesSlug,
        defaultPlantName: defaultPlantName,
      ),
    );
  }
}

class _PlantRoomsSelectionView extends StatelessWidget {
  const _PlantRoomsSelectionView({
    required this.speciesId,
    required this.speciesSlug,
    required this.defaultPlantName,
  });

  final int speciesId;
  final String speciesSlug;
  final String defaultPlantName;

  void _openAddPlantScreen(BuildContext context, PlantRoomModel room) {
    context.router.push(
      AddGardenPlantRoute(
        speciesId: speciesId,
        speciesSlug: speciesSlug,
        roomId: room.id,
        roomName: room.name,
        defaultPlantName: defaultPlantName,
      ),
    );
  }

  Future<void> _openCreateSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: ZColorScheme.of(context).surface,
      builder: (BuildContext sheetContext) {
        return BlocProvider.value(
          value: context.read<PlantRoomsCubit>(),
          child: const PlantRoomFormBottomSheet(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final AuthStatus authStatus = context.watch<AuthCubit>().state.authStatus;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: authStatus == AuthStatus.authenticated
              ? BlocBuilder<PlantRoomsCubit, PlantRoomsState>(
                  builder: (BuildContext context, PlantRoomsState state) {
                    if (state.status.isLoading && state.rooms.isEmpty) {
                      return const Center(
                        child: SizedBox(
                          height: 72,
                          width: 72,
                          child: ZLoading(),
                        ),
                      );
                    }
                    if (state.status.isFailure && state.rooms.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              state.errorMessage ??
                                  context.l10n.plantRoomsLoadError,
                              textAlign: TextAlign.center,
                              style: typography.body.copyWith(
                                color: colorScheme.secondaryText,
                              ),
                            ),
                            const SizedBox(height: 16),
                            ZButton.gradient1(
                              onPressed: () =>
                                  context.read<PlantRoomsCubit>().loadRooms(),
                              child: Text(context.l10n.retry),
                            ),
                          ],
                        ),
                      );
                    }
                    return Column(
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            context.l10n.plantRoomsSelectionTitle,
                            style: typography.largeTitle,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Expanded(
                          child: state.rooms.isEmpty
                              ? Column(
                                  children: <Widget>[
                                    ZButton.secondary(
                                      onPressed: () =>
                                          _openCreateSheet(context),
                                      height: 67,
                                      child: const Text('+'),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: <Widget>[
                                    ListView.separated(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final PlantRoomModel room =
                                            state.rooms[index];
                                        return ZButton.gradient2(
                                          onPressed: () => _openAddPlantScreen(
                                            context,
                                            room,
                                          ),
                                          height: 67,
                                          child: Text(room.name),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const SizedBox(height: 12),
                                      itemCount: state.rooms.length,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 9),
                                      child: ZButton.secondary(
                                        onPressed: () =>
                                            _openCreateSheet(context),
                                        height: 67,
                                        child: const Text('+'),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ],
                    );
                  },
                )
              : PlantRoomsUnauthorizedBanner(
                  onGoToProfile: () {
                    context.router.navigate(
                      const HomeRoute(
                        children: <PageRouteInfo<dynamic>>[
                          ProfileStackRoute(),
                        ],
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
