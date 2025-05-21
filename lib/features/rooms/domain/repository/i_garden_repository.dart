import 'package:zeleno_v2/features/rooms/domain/models/garden_model.dart';
import 'package:zeleno_v2/features/rooms/domain/models/garden_plants_response.dart';

abstract class IGardenPlantRepository {
  Future<void> createGardenPlant({required GardenModel gardenModel});

  Future<List<GardenPlantsResponse>> getGardenPlantsList({int? roomId});

  Future<void> deletePlanFromGarden({required String uid});
}
