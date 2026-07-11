import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/garden_plants/data/repository/garden_plants_repository.dart';
import 'package:zeleno_v2/features/garden_plants/data/service/garden_plants_service.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_result.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/garden_plant_model.dart';

class MockGardenPlantsService extends Mock implements GardenPlantsService {}

void main() {
  late MockGardenPlantsService mockService;
  late GardenPlantsRepository repository;

  const GardenPlantModel createdPlant = GardenPlantModel(
    id: 1,
    customName: 'My ficus',
    speciesId: 42,
    roomId: 3,
  );

  const GardenPlantModel plantWithImage = GardenPlantModel(
    id: 1,
    customName: 'My ficus',
    speciesId: 42,
    roomId: 3,
    imageUrl: 'https://example.com/plant.jpg',
  );

  setUpAll(() {
    registerFallbackValue(<String, dynamic>{});
    registerFallbackValue(<MultipartFile>[]);
  });

  setUp(() {
    mockService = MockGardenPlantsService();
    repository = GardenPlantsRepository(gardenPlantsService: mockService);
  });

  test('creates plant without photo upload', () async {
    when(
      () => mockService.createGardenPlant(body: any(named: 'body')),
    ).thenAnswer((_) async => createdPlant);

    final CreateGardenPlantResult result = await repository.createGardenPlant(
      params: const CreateGardenPlantParams(
        speciesId: 42,
        customName: 'My ficus',
        roomId: 3,
      ),
    );

    expect(result.plant, createdPlant);
    expect(result.imageUploadFailed, isFalse);
    verify(() => mockService.createGardenPlant(body: any(named: 'body')))
        .called(1);
    verifyNever(
      () => mockService.uploadGardenPlantImage(
        plantId: any(named: 'plantId'),
        image: any(named: 'image'),
      ),
    );
  });

  test('uploads photo when bytes provided', () async {
    when(
      () => mockService.createGardenPlant(body: any(named: 'body')),
    ).thenAnswer((_) async => createdPlant);
    when(
      () => mockService.uploadGardenPlantImage(
        plantId: any(named: 'plantId'),
        image: any(named: 'image'),
      ),
    ).thenAnswer((_) async => plantWithImage);

    final CreateGardenPlantResult result = await repository.createGardenPlant(
      params: CreateGardenPlantParams(
        speciesId: 42,
        customName: 'My ficus',
        roomId: 3,
        photoBytes: Uint8List.fromList(<int>[1, 2, 3]),
        photoFileName: 'photo.jpg',
      ),
    );

    expect(result.plant, plantWithImage);
    expect(result.imageUploadFailed, isFalse);
  });

  test('skips upload when photo bytes present but file name is null', () async {
    when(
      () => mockService.createGardenPlant(body: any(named: 'body')),
    ).thenAnswer((_) async => createdPlant);

    final CreateGardenPlantResult result = await repository.createGardenPlant(
      params: CreateGardenPlantParams(
        speciesId: 42,
        customName: 'My ficus',
        roomId: 3,
        photoBytes: Uint8List.fromList(<int>[1, 2, 3]),
      ),
    );

    expect(result.plant, createdPlant);
    expect(result.imageUploadFailed, isFalse);
    verifyNever(
      () => mockService.uploadGardenPlantImage(
        plantId: any(named: 'plantId'),
        image: any(named: 'image'),
      ),
    );
  });

  test('returns imageUploadFailed when upload fails after create', () async {
    when(
      () => mockService.createGardenPlant(body: any(named: 'body')),
    ).thenAnswer((_) async => createdPlant);
    when(
      () => mockService.uploadGardenPlantImage(
        plantId: any(named: 'plantId'),
        image: any(named: 'image'),
      ),
    ).thenThrow(Exception('upload failed'));
    when(
      () => mockService.getGardenPlant(plantId: 1),
    ).thenAnswer((_) async => createdPlant);

    final CreateGardenPlantResult result = await repository.createGardenPlant(
      params: CreateGardenPlantParams(
        speciesId: 42,
        customName: 'My ficus',
        roomId: 3,
        photoBytes: Uint8List.fromList(<int>[1, 2, 3]),
        photoFileName: 'photo.jpg',
      ),
    );

    expect(result.plant, createdPlant);
    expect(result.imageUploadFailed, isTrue);
  });

  test('treats upload as success when image appears after refresh', () async {
    when(
      () => mockService.createGardenPlant(body: any(named: 'body')),
    ).thenAnswer((_) async => createdPlant);
    when(
      () => mockService.uploadGardenPlantImage(
        plantId: any(named: 'plantId'),
        image: any(named: 'image'),
      ),
    ).thenThrow(Exception('parse error'));
    when(
      () => mockService.getGardenPlant(plantId: 1),
    ).thenAnswer((_) async => plantWithImage);

    final CreateGardenPlantResult result = await repository.createGardenPlant(
      params: CreateGardenPlantParams(
        speciesId: 42,
        customName: 'My ficus',
        roomId: 3,
        photoBytes: Uint8List.fromList(<int>[1, 2, 3]),
        photoFileName: 'photo.jpg',
      ),
    );

    expect(result.plant, plantWithImage);
    expect(result.imageUploadFailed, isFalse);
  });

  test(
      'does not throw when both upload and status refresh fail — '
      'plant is already created', () async {
    when(
      () => mockService.createGardenPlant(body: any(named: 'body')),
    ).thenAnswer((_) async => createdPlant);
    when(
      () => mockService.uploadGardenPlantImage(
        plantId: any(named: 'plantId'),
        image: any(named: 'image'),
      ),
    ).thenThrow(Exception('upload failed'));
    when(
      () => mockService.getGardenPlant(plantId: 1),
    ).thenThrow(Exception('network down'));

    final CreateGardenPlantResult result = await repository.createGardenPlant(
      params: CreateGardenPlantParams(
        speciesId: 42,
        customName: 'My ficus',
        roomId: 3,
        photoBytes: Uint8List.fromList(<int>[1, 2, 3]),
        photoFileName: 'photo.jpg',
      ),
    );

    expect(result.plant, createdPlant);
    expect(result.imageUploadFailed, isTrue);
  });

  test('list fetch returns plants from the service as-is', () async {
    const GardenPlantModel inRoom = GardenPlantModel(
      id: 1,
      customName: 'My ficus',
      roomId: 3,
    );
    const GardenPlantModel withoutRoom = GardenPlantModel(
      id: 3,
      customName: 'My palm',
    );
    when(() => mockService.getGardenPlants()).thenAnswer(
      (_) async => <GardenPlantModel>[inRoom, withoutRoom],
    );

    final List<GardenPlantModel> plants = await repository.getGardenPlants();

    expect(plants, <GardenPlantModel>[inRoom, withoutRoom]);
    verifyNever(
      () => mockService.getGardenPlant(plantId: any(named: 'plantId')),
    );
  });
}
