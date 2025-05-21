part of 'garden_cubit.dart';

@freezed
class GardenState with _$GardenState {
  const factory GardenState({
    required Status status,
    @Default([]) List<RoomModel> rooms,
    String? errorMessage,
  }) = _GardenState;
} 