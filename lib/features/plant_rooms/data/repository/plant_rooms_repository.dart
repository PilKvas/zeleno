import 'package:zeleno_v2/features/plant_rooms/data/dto/create_garden_room_body.dart';
import 'package:zeleno_v2/features/plant_rooms/data/dto/plant_room_dto.dart';
import 'package:zeleno_v2/features/plant_rooms/data/dto/update_garden_room_body.dart';
import 'package:zeleno_v2/features/plant_rooms/data/service/plant_rooms_service.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/entities/create_garden_room_params.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/entities/update_garden_room_params.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/plant_room_model.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/repository/i_plant_rooms_repository.dart';

final class PlantRoomsRepository implements IPlantRoomsRepository {
  PlantRoomsRepository({
    required PlantRoomsService plantRoomsService,
  }) : _plantRoomsService = plantRoomsService;

  final PlantRoomsService _plantRoomsService;

  @override
  Future<List<PlantRoomModel>> getGardenRooms() async {
    final List<PlantRoomDto> dtos = await _plantRoomsService.getGardenRooms();
    return dtos.map((PlantRoomDto dto) => dto.toModel()).toList();
  }

  @override
  Future<PlantRoomModel> getGardenRoom({required int roomId}) async {
    final PlantRoomDto dto =
        await _plantRoomsService.getGardenRoom(roomId: roomId);
    return dto.toModel();
  }

  @override
  Future<void> createGardenRoom({
    required CreateGardenRoomParams params,
  }) {
    return _plantRoomsService.createGardenRoom(
      body: CreateGardenRoomBody(name: params.name).toJson(),
    );
  }

  @override
  Future<void> updateGardenRoom({
    required UpdateGardenRoomParams params,
  }) {
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
