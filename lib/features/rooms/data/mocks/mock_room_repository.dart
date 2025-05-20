import 'package:zeleno_v2/features/rooms/domain/models/room_model.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_room_repository.dart';

class MockRoomRepository implements IRoomRepository {
  final List<RoomModel> _mockRooms = [
    const RoomModel(
      id: 1,
      uuid: 'room-1',
      name: 'Гостиная',
      description: 'Основная комната с большими окнами',
      hemisphere: 'north',
      temperature: 22,
      humidity: 45,
      windowSide: 'south',
    ),
    const RoomModel(
      id: 2,
      uuid: 'room-2',
      name: 'Спальня',
      description: 'Спальная комната с умеренным освещением',
      hemisphere: 'north',
      temperature: 21,
      humidity: 50,
      windowSide: 'east',
    ),
    const RoomModel(
      id: 3,
      uuid: 'room-3',
      name: 'Кухня',
      description: 'Кухня с хорошим освещением',
      hemisphere: 'north',
      temperature: 23,
      humidity: 40,
      windowSide: 'west',
    ),
  ];

  @override
  Future<void> createRoom({required RoomModel roomModel}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<List<RoomModel>> getRoomsList() async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockRooms;
  }

  @override
  Future<RoomModel> getRoomByUid({required String uid}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockRooms.firstWhere(
      (room) => room.uuid == uid,
      orElse: () => throw Exception('Room not found'),
    );
  }

  @override
  Future<void> updateRoom({required RoomModel roomModel}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<void> deleteRoom({required String uid}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }
} 