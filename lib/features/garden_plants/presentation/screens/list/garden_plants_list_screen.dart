import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/list/cubit/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/list/widgets/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

@RoutePage()
class GardenStackScreen extends StatefulWidget {
  const GardenStackScreen({super.key});

  @override
  State<GardenStackScreen> createState() => _GardenStackScreenState();
}

class _GardenStackScreenState extends State<GardenStackScreen>
    with AutoRouteAwareStateMixin<GardenStackScreen> {
  late final GardenPlantsListCubit _gardenPlantsListCubit =
      injection<GardenPlantsListCubit>();
  late final PlantRoomsCubit _plantRoomsCubit = injection<PlantRoomsCubit>();
  bool _didInitialRefresh = false;

  void _refreshGardenData(BuildContext context) {
    _gardenPlantsListCubit.refreshPlants();
    _plantRoomsCubit.loadRoomsIfAuthorized(
      context.read<AuthCubit>().state.authStatus,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_didInitialRefresh) {
      _didInitialRefresh = true;
      _refreshGardenData(context);
    }
  }

  @override
  void didInitTabRoute(TabPageRoute? previousRoute) {
    _refreshGardenData(context);
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    _refreshGardenData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<GardenPlantsListCubit>.value(
          value: _gardenPlantsListCubit,
        ),
        BlocProvider<PlantRoomsCubit>.value(
          value: _plantRoomsCubit,
        ),
      ],
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (AuthState previous, AuthState current) =>
            previous.authStatus != current.authStatus,
        listener: (BuildContext context, AuthState state) {
          _plantRoomsCubit.loadRoomsIfAuthorized(state.authStatus);
        },
        child: const AutoRouter(),
      ),
    );
  }
}

@RoutePage()
class GardenPlantsListScreen extends StatelessWidget {
  const GardenPlantsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _GardenPlantsListView();
  }
}

class _GardenPlantsListView extends StatelessWidget {
  const _GardenPlantsListView();

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        child: BlocBuilder<GardenPlantsListCubit, GardenPlantsListState>(
          builder: (BuildContext context, GardenPlantsListState plantsState) {
            return BlocBuilder<PlantRoomsCubit, PlantRoomsState>(
              builder: (BuildContext context, PlantRoomsState roomsState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 12, 18, 0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              context.l10n.gardenPlantsListTitle,
                              style: typography.screenTitle.copyWith(
                                color: colorScheme.onBackground,
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            SvgIcons.plantFilled,
                            width: 24,
                            height: 24,
                            colorFilter: ColorFilter.mode(
                              colorScheme.brand,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 16),
                          IconButton(
                            onPressed: () => context.router.push(
                              const PlantRoomsManagementRoute(),
                            ),
                            icon: Icon(
                              Icons.settings_outlined,
                              color: colorScheme.brand,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        children: <Widget>[
                          GardenRoomChipWidget(
                            label: context.l10n.gardenPlantsListAllRooms,
                            isSelected: plantsState.selectedRoomId == null,
                            onTap: () => context
                                .read<GardenPlantsListCubit>()
                                .selectRoom(null),
                          ),
                          const SizedBox(width: 10),
                          ...roomsState.rooms.map((PlantRoomModel room) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: GardenRoomChipWidget(
                                label: room.name,
                                isSelected:
                                    plantsState.selectedRoomId == room.id,
                                onTap: () => context
                                    .read<GardenPlantsListCubit>()
                                    .selectRoom(room.id),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Expanded(
                      child: _GardenPlantsListBody(
                        state: plantsState,
                        colorScheme: colorScheme,
                        typography: typography,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _GardenPlantsListBody extends StatelessWidget {
  const _GardenPlantsListBody({
    required this.state,
    required this.colorScheme,
    required this.typography,
  });

  final GardenPlantsListState state;
  final ZColorScheme colorScheme;
  final ZTypography typography;

  @override
  Widget build(BuildContext context) {
    if (state.status.isLoading && state.plants.isEmpty) {
      return const Center(
        child: SizedBox(
          height: 72,
          width: 72,
          child: ZLoading(),
        ),
      );
    }
    if (state.status.isFailure && state.plants.isEmpty) {
      final String message = state.error == null
          ? context.l10n.gardenPlantsListLoadError
          : mapErrorToMessage(state.error!, context.l10n);
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                message,
                textAlign: TextAlign.center,
                style: typography.body.copyWith(
                  color: colorScheme.secondaryText,
                ),
              ),
              const SizedBox(height: 16),
              ZButton.gradient1(
                onPressed: () =>
                    context.read<GardenPlantsListCubit>().loadPlants(),
                child: Text(context.l10n.retry),
              ),
            ],
          ),
        ),
      );
    }
    return RefreshIndicator(
      // TOOD(darbinyan): Вынести в отдельную функцию
      onRefresh: () async {
        await Future.wait(<Future<void>>[
          context.read<GardenPlantsListCubit>().refreshPlants(),
          context.read<PlantRoomsCubit>().loadRoomsIfAuthorized(
                context.read<AuthCubit>().state.authStatus,
              ),
        ]);
      },
      child: state.plants.isEmpty
          ? ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  child: Center(
                    child: Text(
                      context.l10n.gardenPlantsListEmpty,
                      style: typography.body.copyWith(
                        color: colorScheme.secondaryText,
                      ),
                    ),
                  ),
                ),
              ],
            )
          : ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              itemCount: state.plants.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 18),
              itemBuilder: (BuildContext context, int index) {
                final GardenPlantModel plant = state.plants[index];
                return GardenPlantCardWidget(
                  plant: plant,

                  // TOOD(darbinyan): Вынести в отдельную функцию
                  onTap: () async {
                    final Object? result = await context.router.push(
                      GardenPlantDetailRoute(plantId: plant.id),
                    );
                    if (!context.mounted) {
                      return;
                    }
                    if (result == true) {
                      await context
                          .read<GardenPlantsListCubit>()
                          .refreshPlants();
                    }
                  },
                );
              },
            ),
    );
  }
}
