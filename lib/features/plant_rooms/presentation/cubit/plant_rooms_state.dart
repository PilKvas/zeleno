import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/plant_room_model.dart';

class PlantRoomsState {
  const PlantRoomsState({
    required this.status,
    required this.rooms,
    this.errorMessage,
  });

  final Status status;
  final List<PlantRoomModel> rooms;
  final String? errorMessage;

  PlantRoomsState copyWith({
    Status? status,
    List<PlantRoomModel>? rooms,
    String? errorMessage,
  }) {
    return PlantRoomsState(
      status: status ?? this.status,
      rooms: rooms ?? this.rooms,
      errorMessage: errorMessage,
    );
  }
}
