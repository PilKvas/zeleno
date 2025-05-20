import 'package:zeleno_v2/features/rooms/domain/models/room_model.dart';

abstract class IRoomRepository {
  Future<void> createRoom({required RoomModel roomModel});

  Future<List<RoomModel>> getRoomsList();

  Future<RoomModel> getRoomByUid({required String uid});

  Future<void> updateRoom({required RoomModel roomModel});

  Future<void> deleteRoom({required String uid});
}
