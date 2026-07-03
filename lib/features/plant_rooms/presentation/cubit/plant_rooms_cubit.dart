import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/entities/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/repository/export.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/plant_rooms_state.dart';

class PlantRoomsCubit extends Cubit<PlantRoomsState> {
  PlantRoomsCubit({
    required IPlantRoomsRepository plantRoomsRepository,
  })  : _repository = plantRoomsRepository,
        super(
          const PlantRoomsState(
            status: Status.initial,
            rooms: <PlantRoomModel>[],
          ),
        );

  final IPlantRoomsRepository _repository;

  Future<void> loadRoomsIfAuthorized(AuthStatus authStatus) async {
    if (authStatus != AuthStatus.authenticated) {
      return;
    }
    await loadRooms();
  }

  Future<void> loadRooms() async {
    try {
      emit(state.copyWith(status: Status.loading, errorMessage: null));
      final List<PlantRoomModel> rooms = await _repository.getGardenRooms();
      emit(
        state.copyWith(
          status: Status.success,
          rooms: rooms,
          errorMessage: null,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.failure,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<PlantRoomModel?> loadRoomDetails(int roomId) async {
    try {
      return await _repository.getGardenRoom(roomId: roomId);
    } catch (_) {
      return null;
    }
  }

  Future<void> createRoom({
    required String name,
  }) async {
    try {
      emit(state.copyWith(status: Status.loading, errorMessage: null));
      final CreateGardenRoomParams params = CreateGardenRoomParams(name: name);
      await _repository.createGardenRoom(params: params);
      await loadRooms();
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.failure,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> updateRoom({
    required int roomId,
    required String name,
    double? temperatureCelsius,
    int? humidityPercent,
    int? illuminanceLux,
    String? windowDirection,
  }) async {
    try {
      emit(state.copyWith(status: Status.loading, errorMessage: null));
      final UpdateGardenRoomParams params = UpdateGardenRoomParams(
        roomId: roomId,
        name: name,
        temperatureCelsius: temperatureCelsius,
        humidityPercent: humidityPercent,
        illuminanceLux: illuminanceLux,
        windowDirection: windowDirection,
      );
      await _repository.updateGardenRoom(params: params);
      await loadRooms();
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.failure,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> deleteRoom({required int roomId}) async {
    try {
      emit(state.copyWith(status: Status.loading, errorMessage: null));
      await _repository.deleteGardenRoom(roomId: roomId);
      await loadRooms();
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.failure,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
