part of 'garden_plants_list_cubit.dart';

@freezed
class GardenPlantsListState with _$GardenPlantsListState {
  const GardenPlantsListState._();

  const factory GardenPlantsListState({
    required Status status,
    @Default(<GardenPlantModel>[]) List<GardenPlantModel> plants,
    Object? error,
    int? selectedRoomId,
    @Default(false) bool isRefreshing,
  }) = _GardenPlantsListState;

  /// Растения выбранной комнаты. Список грузится одним запросом целиком
  /// (`room_id` приходит для каждого растения), фильтрация — в памяти,
  /// поэтому переключение чипов комнат не ходит в сеть.
  List<GardenPlantModel> get visiblePlants {
    final int? roomId = selectedRoomId;
    if (roomId == null) {
      return plants;
    }
    return plants
        .where((GardenPlantModel plant) => plant.roomId == roomId)
        .toList();
  }
}
