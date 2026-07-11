import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/core/helper/export.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
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

/// Обновляет растения и комнаты текущего пользователя.
Future<void> _refreshGardenData(BuildContext context) {
  final AuthStatus authStatus = context.read<AuthCubit>().state.authStatus;
  return Future.wait(<Future<void>>[
    if (authStatus == AuthStatus.authenticated)
      context.read<GardenPlantsListCubit>().refreshPlants(),
    context.read<PlantRoomsCubit>().loadRoomsIfAuthorized(authStatus),
  ]);
}

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

  void _refreshTabData() {
    final AuthStatus authStatus = context.read<AuthCubit>().state.authStatus;
    if (authStatus == AuthStatus.authenticated) {
      _gardenPlantsListCubit.refreshPlants();
    }
    _plantRoomsCubit.loadRoomsIfAuthorized(authStatus);
  }

  /// Грузим данные только если их ещё нет: заход на таб не должен
  /// перезапрашивать список (и перерисовывать фотографии) каждый раз.
  /// Актуальность поддерживают точечные триггеры: pull-to-refresh,
  /// возврат с экранов редактирования и добавление растения.
  void _loadTabDataIfNeeded() {
    final AuthStatus authStatus = context.read<AuthCubit>().state.authStatus;
    if (authStatus == AuthStatus.authenticated &&
        _gardenPlantsListCubit.state.status.isInitial) {
      _gardenPlantsListCubit.loadPlants();
    }
    if (_plantRoomsCubit.state.status.isInitial) {
      _plantRoomsCubit.loadRoomsIfAuthorized(authStatus);
    }
  }

  @override
  void didInitTabRoute(TabPageRoute? previousRoute) {
    _loadTabDataIfNeeded();
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    _loadTabDataIfNeeded();
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
      child: BlocConsumer<AuthCubit, AuthState>(
        listenWhen: (AuthState previous, AuthState current) =>
            previous.authStatus != current.authStatus,
        listener: (BuildContext context, AuthState state) {
          if (state.authStatus == AuthStatus.authenticated) {
            _refreshTabData();
          } else {
            // Кубиты — синглтоны: без сброса данные прошлого аккаунта
            // доживут до следующего входа.
            _gardenPlantsListCubit.reset();
            _plantRoomsCubit.reset();
          }
        },
        buildWhen: (AuthState previous, AuthState current) =>
            (previous.authStatus == AuthStatus.authenticated) !=
            (current.authStatus == AuthStatus.authenticated),
        builder: (BuildContext context, AuthState state) {
          if (state.authStatus != AuthStatus.authenticated) {
            return const GardenUnauthorizedView();
          }
          return const AutoRouter();
        },
      ),
    );
  }
}

@RoutePage()
class GardenPlantsListScreen extends StatefulWidget {
  const GardenPlantsListScreen({super.key});

  @override
  State<GardenPlantsListScreen> createState() => _GardenPlantsListScreenState();
}

class _GardenPlantsListScreenState extends State<GardenPlantsListScreen>
    with AutoRouteAwareStateMixin<GardenPlantsListScreen> {
  // Возврат с детального экрана или управления комнатами: обновляем всё,
  // не полагаясь на pop-результат — системный «назад» его не возвращает.
  @override
  void didPopNext() {
    _refreshGardenData(context);
  }

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
      onRefresh: () => _refreshGardenData(context),
      child: state.visiblePlants.isEmpty
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
              itemCount: state.visiblePlants.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 18),
              itemBuilder: (BuildContext context, int index) {
                final GardenPlantModel plant = state.visiblePlants[index];
                return GardenPlantCardWidget(
                  plant: plant,
                  onTap: () => context.router.push(
                    GardenPlantDetailRoute(plantId: plant.id),
                  ),
                );
              },
            ),
    );
  }
}
