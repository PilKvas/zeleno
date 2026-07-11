import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/export.dart';

class PlantRoomsState {
  const PlantRoomsState({
    required this.status,
    required this.rooms,
    this.error,
  });

  final Status status;
  final List<PlantRoomModel> rooms;

  /// Исходная ошибка; в UI локализуется через `mapErrorToMessage`,
  /// чтобы не показывать пользователю технические детали исключения.
  final Object? error;

  PlantRoomsState copyWith({
    Status? status,
    List<PlantRoomModel>? rooms,
    Object? error,
  }) {
    return PlantRoomsState(
      status: status ?? this.status,
      rooms: rooms ?? this.rooms,
      error: error,
    );
  }
}
