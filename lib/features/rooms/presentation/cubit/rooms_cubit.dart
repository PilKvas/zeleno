import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/rooms/domain/models/room_model.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_room_repository.dart';

part 'rooms_cubit.freezed.dart';
part 'rooms_state.dart';

class RoomsCubit extends Cubit<RoomsState> {
  final IRoomRepository _roomRepository;

  RoomsCubit({
    required IRoomRepository roomRepository,
  })  : _roomRepository = roomRepository,
        super(const RoomsState(
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

  Future<void> createRoom({
    required String name,
    String? description,
    String? hemisphere,
    int? temperature,
    int? humidity,
    String? windowSide,
  }) async {
    try {
      emit(state.copyWith(status: Status.loading));
      
      // Create a temporary ID and UUID since the server will assign the real ones
      final roomModel = RoomModel(
        id: 0, // Temporary ID
        uuid: DateTime.now().millisecondsSinceEpoch.toString(), // Temporary UUID
        name: name,
        description: description,
        hemisphere: hemisphere,
        temperature: temperature,
        humidity: humidity,
        windowSide: windowSide,
      );
      
      await _roomRepository.createRoom(roomModel: roomModel);
      await loadRooms(); // Reload rooms after creating a new one
      
    } catch (e) {
      emit(state.copyWith(
        status: Status.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> deleteRoom(String uuid) async {
    try {
      emit(state.copyWith(status: Status.loading));
      
      await _roomRepository.deleteRoom(uid: uuid);
      await loadRooms(); // Reload rooms after deletion
      
    } catch (e) {
      emit(state.copyWith(
        status: Status.failure,
        errorMessage: e.toString(),
      ));
    }
  }
} 