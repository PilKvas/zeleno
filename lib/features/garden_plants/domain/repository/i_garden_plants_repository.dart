import 'dart:typed_data';
import 'package:zeleno_v2/features/garden_plants/domain/entities/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';

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

  Future<List<GardenPlantModel>> getGardenPlants();

  Future<GardenPlantModel> getGardenPlant({required int plantId});

  Future<GardenPlantModel> updateGardenPlant({
    required UpdateGardenPlantParams params,
  });

  Future<void> deleteGardenPlant({required int plantId});
}
