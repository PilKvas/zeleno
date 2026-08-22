import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/list/cubit/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/widgets/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

@RoutePage()
class PlantRoomsManagementScreen extends StatelessWidget {
  const PlantRoomsManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PlantRoomsManagementView();
  }
}

class _PlantRoomsManagementView extends StatelessWidget {
  const _PlantRoomsManagementView();

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

  Future<void> _openEditSheet(BuildContext context, PlantRoomModel room) async {
    final PlantRoomsCubit cubit = context.read<PlantRoomsCubit>();
    final PlantRoomModel? details = await cubit.loadRoomDetails(room.id);
    if (!context.mounted) {
      return;
    }
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: ZColorScheme.of(context).surface,
      builder: (BuildContext sheetContext) {
        return BlocProvider.value(
          value: cubit,
          child: PlantRoomFormBottomSheet(
            room: details ?? room,
            onRoomDeleted: (int roomId) async {
              final GardenPlantsListCubit plantsCubit = context
                  .read<GardenPlantsListCubit>();
              if (plantsCubit.state.selectedRoomId == roomId) {
                plantsCubit.selectRoom(null);
              }
            },
          ),
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
        backgroundColor: colorScheme.background,
        elevation: 0,
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
                              state.error != null
                                  ? mapErrorToMessage(
                                      state.error!,
                                      context.l10n,
                                    )
                                  : context.l10n.plantRoomsLoadError,
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
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          context.l10n.plantRoomsManagementTitle,
                          style: typography.largeTitle,
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
                              : ListView.separated(
                                  itemCount: state.rooms.length + 1,
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const SizedBox(height: 12),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                        if (index == state.rooms.length) {
                                          return ZButton.secondary(
                                            onPressed: () =>
                                                _openCreateSheet(context),
                                            height: 67,
                                            child: const Text('+'),
                                          );
                                        }
                                        final PlantRoomModel room =
                                            state.rooms[index];
                                        return ZButton.gradient2(
                                          onPressed: () =>
                                              _openEditSheet(context, room),
                                          height: 67,
                                          child: Text(room.name),
                                        );
                                      },
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
                        children: <PageRouteInfo<dynamic>>[ProfileStackRoute()],
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
