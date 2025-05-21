import 'package:bloc/bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/features/rooms/domain/models/garden_model.dart';
import 'package:zeleno_v2/features/rooms/domain/models/room_model.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_garden_repository.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_room_repository.dart';

part 'garden_cubit.freezed.dart';
part 'garden_state.dart';

class GardenCubit extends Cubit<GardenState> {
  final IGardenPlantRepository _gardenPlantRepository;
  final IRoomRepository _roomRepository;

  GardenCubit({
    required IGardenPlantRepository gardenPlantRepository,
    required IRoomRepository roomRepository,
  })  : _gardenPlantRepository = gardenPlantRepository,
        _roomRepository = roomRepository,
        super(const GardenState(
          status: Status.initial,
          rooms: [],
        ));

  Future<void> loadRooms() async {
    try {
      emit(state.copyWith(status: Status.loading));
      
      final rooms = await _roomRepository.getRoomsList();
      
      emit(state.copyWith(
        status: Status.success,
        rooms: rooms,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: Status.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> addPlantToGarden({
    required int roomId,
    required int specieId,
    String? customName,
    String? description,
  }) async {
    try {
      emit(state.copyWith(status: Status.loading));
      
      final gardenModel = GardenModel(
        roomId: roomId,
        specieId: specieId,
        customName: customName,
        description: description,
      );
      
      await _gardenPlantRepository.createGardenPlant(gardenModel: gardenModel);
      
      emit(state.copyWith(
        status: Status.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: Status.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void navigateToRoomsTab(StackRouter router) {
    router.navigate(const HomeRoute(children: [RoomRoute()]));
  }
} 