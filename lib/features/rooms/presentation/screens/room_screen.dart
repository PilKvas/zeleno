import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/plant_details/presentation/cubit/garden_cubit.dart';
import 'package:zeleno_v2/features/rooms/domain/models/room_model.dart';
import 'package:zeleno_v2/features/rooms/presentation/cubit/room_plants_cubit.dart';
import 'package:zeleno_v2/features/rooms/presentation/cubit/rooms_cubit.dart';
import 'package:zeleno_v2/features/rooms/presentation/widgets/add_room_bottom_sheet.dart';
import 'package:zeleno_v2/features/rooms/presentation/widgets/room_shimmer.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

import '../../domain/models/garden_plants_response.dart';

@RoutePage()
class RoomStackScreen extends StatelessWidget {
  const RoomStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class RoomScreen extends StatefulWidget {
  const RoomScreen({
    super.key,
  });

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  final _scrollController = ScrollController();
  RoomModel? _selectedRoom;
  late final RoomPlantsCubit _roomPlantsCubit;

  @override
  void initState() {
    super.initState();
    _roomPlantsCubit = RoomPlantsCubit(
      gardenPlantRepository: injection(),
    );
    // Load all plants when screen is first opened
    _roomPlantsCubit.loadRoomPlants();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _roomPlantsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    final textTheme = ZTypography.of(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RoomsCubit(
            roomRepository: injection(),
          )..loadRooms(),
        ),
        BlocProvider.value(
          value: _roomPlantsCubit,
        ),
        BlocProvider(
          create: (context) => GardenCubit(
            gardenPlantRepository: injection(),
            roomRepository: injection(),
          ),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocConsumer<RoomsCubit, RoomsState>(
            listener: (context, state) {
              // if (state.status == Status.failure &&
              //     state.errorMessage != null) {
              //   CustomSnackBar.show(
              //     context: context,
              //     message: state.errorMessage!,
              //     type: SnackBarType.error,
              //   );
              // }

              if (state.status == Status.success && _selectedRoom != null) {
                final roomExists =
                    state.rooms.any((room) => room.id == _selectedRoom!.id);
                if (!roomExists) {
                  setState(() {
                    _selectedRoom = null;
                  });
                }
              }
            },
            builder: (context, state) {
              if (state.status == Status.loading && state.rooms.isEmpty) {
                return const Scaffold(
                  body: RoomShimmer(),
                );
              }

              return Scaffold(
                backgroundColor: colors.background,
                body: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: CustomScrollView(
                    key: ValueKey(state.status),
                    slivers: [
                      SliverAppBar(
                        backgroundColor: colors.background,
                        centerTitle: false,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Мои растения",
                              style: textTheme.title.copyWith(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nunito',
                              ),
                            ),
                            Text(
                              "Теплица",
                              style: textTheme.title.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      state.rooms.isEmpty
                          ? const _EmptyRoomsScreen()
                          : _buildRoomsView(context, state.rooms),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: colors.action,
                  child: Icon(Icons.add, color: colors.onAction),
                  onPressed: () => _showAddRoomBottomSheet(context),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildRoomsView(BuildContext context, List<RoomModel> rooms) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverFillRemaining(
        child: Column(
          children: [
            _buildRoomSelector(context, rooms),
            Expanded(
              child: _selectedRoom == null
                  ? _buildAllRoomsContent(context, rooms)
                  : _buildRoomContent(context, _selectedRoom!),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoomSelector(BuildContext context, List<RoomModel> rooms) {
    return Container(
      height: 80,
      padding: const EdgeInsets.only(top: 34),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // All rooms button
          _buildRoomSelectorItem(
            context,
            isSelected: _selectedRoom == null,
            onTap: () {
              setState(() {
                _selectedRoom = null;
              });
              _roomPlantsCubit.loadRoomPlants();
            },
            text: 'Все',
          ),
          // Individual room buttons
          ...rooms.map(
            (room) => _buildRoomSelectorItem(
              context,
              isSelected: _selectedRoom?.id == room.id,
              onTap: () {
                setState(() {
                  _selectedRoom = room;
                });
                _roomPlantsCubit.loadRoomPlants(roomId: room.id);
              },
              text: room.name,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoomSelectorItem(
    BuildContext context, {
    required bool isSelected,
    required VoidCallback onTap,
    required String text,
  }) {
    final colors = ZColorScheme.of(context);
    final textTheme = ZTypography.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? colors.action : colors.onBrand,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: textTheme.body.copyWith(
            color: isSelected ? colors.onAction : colors.onBackground,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildAllRoomsContent(BuildContext context, List<RoomModel> rooms) {
    final textTheme = ZTypography.of(context);

    return BlocBuilder<RoomPlantsCubit, RoomPlantsState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const RoomShimmer();
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: ListView(
            key: ValueKey(state.status),
            padding: const EdgeInsets.only(top: 16),
            children: [
              Text(
                'Все комнаты',
                style: textTheme.title,
              ),
              const SizedBox(height: 16),
              ...rooms.map((room) => _buildRoomListItem(context, room)),
              if (state.plants.isNotEmpty) ...[
                const SizedBox(height: 24),
                Text(
                  'Все растения',
                  style: textTheme.title,
                ),
                const SizedBox(height: 16),
                ...state.plants.map((plant) => _buildPlantCard(
                      context: context,
                      plant: plant,
                    )),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildRoomListItem(BuildContext context, RoomModel room) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(room.name),
        subtitle: room.description != null ? Text(room.description!) : null,
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          setState(() {
            _selectedRoom = room;
          });
          _roomPlantsCubit.loadRoomPlants(roomId: room.id);
        },
      ),
    );
  }

  Widget _buildRoomContent(BuildContext context, RoomModel room) {
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);

    return BlocBuilder<RoomPlantsCubit, RoomPlantsState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const RoomShimmer();
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colors.surface,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: colors.onSurface.withValues(alpha: 0.06),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Temperature
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(Icons.thermostat_outlined, size: 24),
                          const SizedBox(width: 8),
                          Text(
                            "${room.temperature ?? 25}°C",
                            style: textTheme.body.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Humidity
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(Icons.water_drop_outlined, size: 24),
                          const SizedBox(width: 8),
                          Text(
                            "${room.humidity ?? 55}%",
                            style: textTheme.body.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Delete button
                    IconButton(
                      onPressed: () {
                        _showDeleteRoomDialog(context, room);
                      },
                      icon: Icon(Icons.delete_outline, color: colors.error),
                    )
                  ],
                ),
              ),
              if (state.plants.isEmpty)
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.accessibility,
                        size: 80,
                        color: colors.secondaryText,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'В этой комнате пока нет растений',
                        style: textTheme.title,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              else
                ...state.plants.map(
                  (plant) => _buildPlantCard(
                    context: context,
                    plant: plant,
                    room: room,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPlantCard({
    required BuildContext context,
    required GardenPlantsResponse plant,
    RoomModel? room,
  }) {
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);

    final gardenCubit = context.read<GardenCubit>();

    final roomPlantsCubit = context.read<RoomPlantsCubit>();

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: colors.action.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.add,
            color: colors.action,
          ),
        ),
        title: Text(
          plant.customName ?? '',
          style: textTheme.title.copyWith(
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          plant.latinName,
          style: textTheme.body.copyWith(
            color: colors.secondaryText,
            fontSize: 14,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete_outline, color: colors.error),
          onPressed: () {
            showDialog(
              context: context,
              builder: (dialogContext) {
                final dialogColors = ZColorScheme.of(dialogContext);
                return AlertDialog(
                  title: const Text('Удалить растение?'),
                  content: Text(
                      'Вы уверены, что хотите удалить ${plant.customName ?? plant.latinName}?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(dialogContext),
                      child: const Text('Отмена'),
                    ),
                    TextButton(
                      onPressed: () {
                        gardenCubit.deletePlantFromGarden(plant.id.toString());
                        roomPlantsCubit.loadRoomPlants(roomId: room?.id);
                        Navigator.pop(dialogContext);
                      },
                      child: Text(
                        'Удалить',
                        style: TextStyle(color: dialogColors.error),
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

  void _showAddRoomBottomSheet(BuildContext context) {
    final roomsCubit = context.read<RoomsCubit>();
    final sheetColors = ZColorScheme.of(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: sheetColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => AddRoomBottomSheet(
        roomsCubit: roomsCubit,
      ),
    );
  }

  void _showDeleteRoomDialog(BuildContext context, RoomModel room) {
    final roomsCubit = context.read<RoomsCubit>();

    showDialog(
      context: context,
      builder: (dialogContext) {
        final dialogColors = ZColorScheme.of(dialogContext);
        return AlertDialog(
          title: const Text('Удаление комнаты'),
          content:
              Text('Вы уверены, что хотите удалить комнату "${room.name}"?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: const Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                roomsCubit.deleteRoom(room.uuid);
                setState(() {
                  _selectedRoom = null;
                });
                Navigator.of(dialogContext).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: dialogColors.error,
              ),
              child: const Text('Удалить'),
            ),
          ],
        );
      },
    );
  }
}

class _EmptyRoomsScreen extends StatelessWidget {
  const _EmptyRoomsScreen();

  @override
  Widget build(BuildContext context) {
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);
    return SliverToBoxAdapter(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.room_preferences_outlined,
              size: 80,
              color: colors.secondaryText,
            ),
            const SizedBox(height: 16),
            Text(
              'У вас пока нет комнат',
              style: textTheme.title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
