part of 'garden_plants_list_cubit.dart';

@freezed
class GardenPlantsListState with _$GardenPlantsListState {
  const factory GardenPlantsListState({
    required Status status,
    @Default(<GardenPlantModel>[]) List<GardenPlantModel> plants,
    Object? error,
    int? selectedRoomId,
    @Default(false) bool isRefreshing,
  }) = _GardenPlantsListState;
}
