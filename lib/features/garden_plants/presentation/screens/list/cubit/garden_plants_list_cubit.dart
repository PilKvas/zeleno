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

  /// Номер последнего запроса: ответ устаревшего запроса не должен
  /// перетирать состояние более нового.
  int _requestId = 0;

  /// Кубит живёт как синглтон — при логауте состояние нужно очищать,
  /// чтобы не показать растения прошлого аккаунта.
  void reset() {
    _requestId++;
    emit(const GardenPlantsListState(status: Status.initial));
  }

  Future<void> loadPlants() async {
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        isRefreshing: false,
      ),
    );
    await _fetchPlants();
  }

  /// Фильтрация по комнате идёт в памяти по уже загруженному списку
  /// (см. [GardenPlantsListState.visiblePlants]) — без запроса в сеть.
  void selectRoom(int? roomId) {
    emit(state.copyWith(selectedRoomId: roomId, error: null));
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
    await _fetchPlants();
  }

  Future<void> _fetchPlants() async {
    final int requestId = ++_requestId;
    try {
      final List<GardenPlantModel> plants =
          await _repository.getGardenPlants();
      if (isClosed || requestId != _requestId) {
        return;
      }
      emit(
        state.copyWith(
          status: Status.success,
          plants: plants,
          error: null,
          isRefreshing: false,
        ),
      );
    } catch (error) {
      if (isClosed || requestId != _requestId) {
        return;
      }
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
