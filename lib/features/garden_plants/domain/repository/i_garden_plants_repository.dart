import 'dart:typed_data';

import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_result.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/update_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/garden_plant_model.dart';

abstract interface class IGardenPlantsRepository {
  Future<CreateGardenPlantResult> createGardenPlant({
    required CreateGardenPlantParams params,
  });

  Future<GardenPlantModel> uploadGardenPlantImage({
    required int plantId,
    required Uint8List bytes,
    required String fileName,
  });

  Future<void> deleteGardenPlantImage({required int plantId});

  Future<List<GardenPlantModel>> getGardenPlants({int? roomId});

  Future<GardenPlantModel> getGardenPlant({required int plantId});

  Future<GardenPlantModel> updateGardenPlant({
    required UpdateGardenPlantParams params,
  });

  Future<void> deleteGardenPlant({required int plantId});
}
