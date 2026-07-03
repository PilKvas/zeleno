import 'package:zeleno_v2/features/plant_rooms/domain/entities/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/export.dart';

abstract interface class IPlantRoomsRepository {
  Future<List<PlantRoomModel>> getGardenRooms();

  Future<PlantRoomModel> getGardenRoom({required int roomId});

  Future<void> createGardenRoom({
    required CreateGardenRoomParams params,
  });

  Future<void> updateGardenRoom({
    required UpdateGardenRoomParams params,
  });

  Future<void> deleteGardenRoom({required int roomId});
}
