import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/rooms/domain/models/garden_plants_response.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_garden_repository.dart';

part 'room_plants_cubit.freezed.dart';
part 'room_plants_state.dart';

class RoomPlantsCubit extends Cubit<RoomPlantsState> {
  final IGardenPlantRepository _gardenPlantRepository;

  RoomPlantsCubit({
    required IGardenPlantRepository gardenPlantRepository,
  })  : _gardenPlantRepository = gardenPlantRepository,
        super(const RoomPlantsState(
          status: Status.initial,
          plants: [],
        ));

  Future<void> loadRoomPlants({int? roomId}) async {
    try {
      emit(state.copyWith(status: Status.loading));
      
      final plants = await _gardenPlantRepository.getGardenPlantsList(roomId: roomId);
      
      emit(state.copyWith(
        status: Status.success,
        plants: plants,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: Status.failure,
        errorMessage: e.toString(),
      ));
    }
  }
} 