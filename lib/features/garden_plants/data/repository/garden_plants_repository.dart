import 'dart:io';
import 'dart:typed_data';

import 'package:zeleno_v2/features/garden_plants/data/dto/create_garden_plant_body.dart';
import 'package:zeleno_v2/features/garden_plants/data/dto/update_garden_plant_body.dart';
import 'package:zeleno_v2/features/garden_plants/data/service/garden_plants_service.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_result.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/update_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/garden_plant_model.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/i_garden_plants_repository.dart';

final class GardenPlantsRepository implements IGardenPlantsRepository {
  GardenPlantsRepository({
    required GardenPlantsService gardenPlantsService,
  }) : _gardenPlantsService = gardenPlantsService;

  final GardenPlantsService _gardenPlantsService;

  @override
  Future<CreateGardenPlantResult> createGardenPlant({
    required CreateGardenPlantParams params,
  }) async {
    final GardenPlantModel plant = await _gardenPlantsService.createGardenPlant(
      body: CreateGardenPlantBody(
        speciesId: params.speciesId,
        customName: params.customName.trim(),
        roomId: params.roomId,
      ).toJson(),
    );
    final Uint8List? photoBytes = params.photoBytes;
    final String? photoFileName = params.photoFileName;
    // Фото опционально: грузим только когда есть и байты, и реальное имя файла.
    if (photoBytes == null || photoFileName == null) {
      return CreateGardenPlantResult(plant: plant);
    }
    try {
      final GardenPlantModel plantWithImage = await uploadGardenPlantImage(
        plantId: plant.id,
        bytes: photoBytes,
        fileName: photoFileName,
      );
      return CreateGardenPlantResult(plant: plantWithImage);
    } catch (_) {
      final GardenPlantModel refreshedPlant =
          await getGardenPlant(plantId: plant.id);
      final String? imageUrl = refreshedPlant.imageUrl;
      if (imageUrl != null && imageUrl.isNotEmpty) {
        return CreateGardenPlantResult(plant: refreshedPlant);
      }
      return CreateGardenPlantResult(plant: plant, imageUploadFailed: true);
    }
  }

  @override
  Future<GardenPlantModel> uploadGardenPlantImage({
    required int plantId,
    required Uint8List bytes,
    required String fileName,
  }) async {
    final File tempFile = File(
      '${Directory.systemTemp.path}/garden_plant_${plantId}_$fileName',
    );
    await tempFile.writeAsBytes(bytes);
    try {
      return await _gardenPlantsService.uploadGardenPlantImage(
        plantId: plantId,
        image: tempFile,
      );
    } finally {
      if (await tempFile.exists()) {
        await tempFile.delete();
      }
    }
  }

  @override
  Future<List<GardenPlantModel>> getGardenPlants({int? roomId}) async {
    final List<GardenPlantModel> plants =
        await _gardenPlantsService.getGardenPlants();
    if (roomId == null) {
      return plants;
    }
    final List<GardenPlantModel> plantsWithRoom = await Future.wait(
      plants.map(_loadPlantRoomDetails),
    );
    return plantsWithRoom
        .where((GardenPlantModel plant) => plant.roomId == roomId)
        .toList();
  }

  @override
  Future<GardenPlantModel> getGardenPlant({required int plantId}) {
    return _gardenPlantsService.getGardenPlant(plantId: plantId);
  }

  @override
  Future<GardenPlantModel> updateGardenPlant({
    required UpdateGardenPlantParams params,
  }) {
    return _gardenPlantsService.updateGardenPlant(
      plantId: params.plantId,
      body: UpdateGardenPlantBody(
        customName: params.customName.trim(),
        roomId: params.roomId,
        sunlightExposure: params.sunlightExposure,
        plantSize: params.plantSize,
        potSizeMm: params.potSizeMm,
        lastWatering: params.lastWatering,
        lastWateringExactDate: params.lastWateringExactDate,
        lastRepotting: params.lastRepotting,
        lastRepottingExactDate: params.lastRepottingExactDate,
      ).toJson(),
    );
  }

  @override
  Future<void> deleteGardenPlant({required int plantId}) {
    return _gardenPlantsService.deleteGardenPlant(plantId: plantId);
  }

  @override
  Future<void> deleteGardenPlantImage({required int plantId}) {
    return _gardenPlantsService.deleteGardenPlantImage(plantId: plantId);
  }

  Future<GardenPlantModel> _loadPlantRoomDetails(GardenPlantModel plant) async {
    if (plant.roomId != null) {
      return plant;
    }
    final GardenPlantModel details = await getGardenPlant(plantId: plant.id);
    return plant.copyWith(
      roomId: details.roomId,
      speciesId: details.speciesId,
      speciesSlug: details.speciesSlug,
      speciesLatinName: details.speciesLatinName,
      imageUrl: details.imageUrl ?? plant.imageUrl,
    );
  }
}
