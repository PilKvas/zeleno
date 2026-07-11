import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:zeleno_v2/features/garden_plants/data/dto/export.dart';
import 'package:zeleno_v2/features/garden_plants/data/service/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/export.dart';

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
      // Растение уже создано — наружу кидать нельзя, иначе повторный
      // сабмит создаст дубль. Пробуем уточнить статус фото, но любая
      // ошибка здесь тоже означает лишь «фото не подтвердилось».
      try {
        final GardenPlantModel refreshedPlant =
            await getGardenPlant(plantId: plant.id);
        final String? imageUrl = refreshedPlant.imageUrl;
        if (imageUrl != null && imageUrl.isNotEmpty) {
          return CreateGardenPlantResult(plant: refreshedPlant);
        }
      } catch (_) {}
      return CreateGardenPlantResult(plant: plant, imageUploadFailed: true);
    }
  }

  @override
  Future<GardenPlantModel> uploadGardenPlantImage({
    required int plantId,
    required Uint8List bytes,
    required String fileName,
  }) async {
    return _gardenPlantsService.uploadGardenPlantImage(
      plantId: plantId,
      image: <MultipartFile>[
        MultipartFile.fromBytes(
          bytes,
          filename: fileName,
          // Без явного contentType парт уходит как application/octet-stream,
          // что сервер может отклонить при валидации MIME.
          contentType: _imageMediaType(fileName),
        ),
      ],
    );
  }

  @override
  Future<List<GardenPlantModel>> getGardenPlants() {
    return _gardenPlantsService.getGardenPlants();
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

  static DioMediaType _imageMediaType(String fileName) {
    final String extension = fileName.split('.').last.toLowerCase();
    return switch (extension) {
      'png' => DioMediaType('image', 'png'),
      'webp' => DioMediaType('image', 'webp'),
      'heic' => DioMediaType('image', 'heic'),
      'gif' => DioMediaType('image', 'gif'),
      _ => DioMediaType('image', 'jpeg'),
    };
  }
}
