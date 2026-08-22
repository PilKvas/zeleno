import 'package:zeleno_v2/features/plant_rooms/data/dto/export.dart';
import 'package:zeleno_v2/features/plant_rooms/data/service/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/entities/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/repository/export.dart';

final class PlantRoomsRepository implements IPlantRoomsRepository {
  PlantRoomsRepository({required PlantRoomsService plantRoomsService})
    : _plantRoomsService = plantRoomsService;

  final PlantRoomsService _plantRoomsService;

  @override
  Future<List<PlantRoomModel>> getGardenRooms() async {
    final List<PlantRoomDto> dtos = await _plantRoomsService.getGardenRooms();
    return dtos.map((PlantRoomDto dto) => dto.toModel()).toList();
  }

  @override
  Future<PlantRoomModel> getGardenRoom({required int roomId}) async {
    final PlantRoomDto dto = await _plantRoomsService.getGardenRoom(
      roomId: roomId,
    );
    return dto.toModel();
  }

  @override
  Future<void> createGardenRoom({required CreateGardenRoomParams params}) {
    return _plantRoomsService.createGardenRoom(
      body: CreateGardenRoomBody(name: params.name).toJson(),
    );
  }

  @override
  Future<void> updateGardenRoom({required UpdateGardenRoomParams params}) {
    return _plantRoomsService.updateGardenRoom(
      roomId: params.roomId,
      body: UpdateGardenRoomBody(
        name: params.name,
        temperatureCelsius: params.temperatureCelsius,
        humidityPercent: params.humidityPercent,
        illuminanceLux: params.illuminanceLux,
        windowDirection: params.windowDirection,
      ).toJson(),
    );
  }

  @override
  Future<void> deleteGardenRoom({required int roomId}) {
    return _plantRoomsService.deleteGardenRoom(roomId: roomId);
  }
}
