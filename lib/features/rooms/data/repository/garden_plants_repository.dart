import 'package:zeleno_v2/features/rooms/data/service/garden_service.dart';
import 'package:zeleno_v2/features/rooms/domain/models/garden_model.dart';
import 'package:zeleno_v2/features/rooms/domain/models/garden_plants_response.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_garden_repository.dart';

class GardenPlantsRepository implements IGardenPlantRepository {
  final GardenService _gardenService;

  GardenPlantsRepository({required GardenService gardenService})
      : _gardenService = gardenService;

  @override
  Future<void> createGardenPlant({required GardenModel gardenModel}) async {
    await _gardenService.createGardenPlant(gardenModel: gardenModel);
  }

  @override
  Future<void> deletePlanFromGarden({required String uid}) async {
    await _gardenService.deletePlanFromGarden(uid: uid);
  }

  @override
  Future<List<GardenPlantsResponse>> getGardenPlantsList({int? roomId}) =>
      _gardenService.getGardenPlantsList(roomId: roomId);
}
