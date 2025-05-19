part of 'rooms_cubit.dart';

@freezed
class RoomsState with _$RoomsState {
  const factory RoomsState({
    required Status status,
    @Default([]) List<RoomModel> rooms,
    String? errorMessage,
  }) = _RoomsState;
}
