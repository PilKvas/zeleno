import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/export.dart';

part 'garden_plants_list_cubit.freezed.dart';
part 'garden_plants_list_state.dart';

class GardenPlantsListCubit extends Cubit<GardenPlantsListState> {
  GardenPlantsListCubit({
    required IGardenPlantsRepository gardenPlantsRepository,
  })  : _repository = gardenPlantsRepository,
        super(const GardenPlantsListState(status: Status.initial));

  final IGardenPlantsRepository _repository;

  Future<void> loadPlants() async {
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        isRefreshing: false,
      ),
    );
    await _fetchPlants(state.selectedRoomId);
  }

  Future<void> selectRoom(int? roomId) async {
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        selectedRoomId: roomId,
        isRefreshing: false,
      ),
    );
    await _fetchPlants(roomId);
  }

  Future<void> refreshPlants() async {
    final bool hasPlants = state.plants.isNotEmpty;
    emit(
      state.copyWith(
        isRefreshing: true,
        error: null,
        status: hasPlants ? Status.success : Status.loading,
      ),
    );
    await _fetchPlants(state.selectedRoomId);
  }

  Future<void> _fetchPlants(int? roomId) async {
    try {
      final List<GardenPlantModel> plants =
          await _repository.getGardenPlants(roomId: roomId);
      emit(
        state.copyWith(
          status: Status.success,
          plants: plants,
          error: null,
          selectedRoomId: roomId,
          isRefreshing: false,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: state.plants.isEmpty ? Status.failure : Status.success,
          error: error,
          isRefreshing: false,
        ),
      );
    }
  }
}
