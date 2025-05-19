import 'package:zeleno_v2/features/rooms/data/service/room_service.dart';
import 'package:zeleno_v2/features/rooms/domain/models/room_model.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_room_repository.dart';

class RoomRepository implements IRoomRepository {
  final RoomService _roomService;

  RoomRepository({required RoomService roomService})
      : _roomService = roomService;

  @override
  Future<void> createRoom({
    required RoomModel roomModel,
  }) async {
    await _roomService.createRoom(
      roomModel: roomModel,
    );
  }

  @override
  Future<void> deleteRoom({
    required String uid,
  }) async {
    await _roomService.deleteRoom(uid: uid);
  }

  @override
  Future<RoomModel> getRoomByUid({
    required String uid,
  }) async {
    return _roomService.getRoomByUid(uid: uid);
  }

  @override
  Future<List<RoomModel>> getRoomsList() async {
    return _roomService.getRoomsList();
  }

  @override
  Future<void> updateRoom({
    required RoomModel roomModel,
  }) {
    return _roomService.updateRoom(
      uid: roomModel.uuid,
      roomModel: roomModel,
    );
  }
}
