part of 'room_plants_cubit.dart';

@freezed
class RoomPlantsState with _$RoomPlantsState {
  const factory RoomPlantsState({
    required Status status,
    @Default([]) List<GardenPlantsResponse> plants,
    String? errorMessage,
  }) = _RoomPlantsState;
} 