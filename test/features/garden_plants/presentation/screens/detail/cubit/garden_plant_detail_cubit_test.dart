import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/garden_plant_model.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/i_garden_plants_repository.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/detail/cubit/garden_plant_detail_cubit.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';
import 'package:zeleno_v2/features/plant_details/domain/repository/i_plant_details_repository.dart';

class MockGardenPlantsRepository extends Mock
    implements IGardenPlantsRepository {}

class MockPlantDetailsRepository extends Mock
    implements IPlantDetailsRepository {}

class MockPlantDetailsModel extends Mock implements PlantDetailsModel {}

void main() {
  late MockGardenPlantsRepository mockRepository;
  late MockPlantDetailsRepository mockDetailsRepository;

  const GardenPlantModel plant = GardenPlantModel(
    id: 1,
    customName: 'Ficus',
    speciesId: 42,
    roomId: 3,
  );

  const GardenPlantModel plantWithSlug = GardenPlantModel(
    id: 1,
    customName: 'Ficus',
    speciesId: 42,
    roomId: 3,
    speciesSlug: 'ficus-elastica',
  );

  setUp(() {
    mockRepository = MockGardenPlantsRepository();
    mockDetailsRepository = MockPlantDetailsRepository();
  });

  GardenPlantDetailCubit buildCubit() {
    return GardenPlantDetailCubit(
      gardenPlantsRepository: mockRepository,
      plantDetailsRepository: mockDetailsRepository,
      plantId: 1,
    );
  }

  blocTest<GardenPlantDetailCubit, GardenPlantDetailState>(
    'loadPlant emits success without species details when slug is absent',
    setUp: () {
      when(() => mockRepository.getGardenPlant(plantId: 1))
          .thenAnswer((_) async => plant);
    },
    build: buildCubit,
    act: (GardenPlantDetailCubit cubit) => cubit.loadPlant(),
    expect: () => <Matcher>[
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.loading),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.success)
          .having((GardenPlantDetailState s) => s.plant, 'plant', plant)
          .having((GardenPlantDetailState s) => s.speciesDetails, 'details', isNull),
    ],
    verify: (_) {
      verifyNever(() => mockDetailsRepository.getPlant(any()));
    },
  );

  blocTest<GardenPlantDetailCubit, GardenPlantDetailState>(
    'loadPlant loads species details when slug is present',
    setUp: () {
      when(() => mockRepository.getGardenPlant(plantId: 1))
          .thenAnswer((_) async => plantWithSlug);
      when(() => mockDetailsRepository.getPlant('ficus-elastica'))
          .thenAnswer((_) async => MockPlantDetailsModel());
    },
    build: buildCubit,
    act: (GardenPlantDetailCubit cubit) => cubit.loadPlant(),
    expect: () => <Matcher>[
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.loading),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.success)
          .having(
            (GardenPlantDetailState s) => s.speciesDetails,
            'details',
            isA<PlantDetailsModel>(),
          ),
    ],
    verify: (_) {
      verify(() => mockDetailsRepository.getPlant('ficus-elastica')).called(1);
    },
  );

  blocTest<GardenPlantDetailCubit, GardenPlantDetailState>(
    'loadPlant emits failure when garden plant load fails',
    setUp: () {
      when(() => mockRepository.getGardenPlant(plantId: 1))
          .thenThrow(Exception('network'));
    },
    build: buildCubit,
    act: (GardenPlantDetailCubit cubit) => cubit.loadPlant(),
    expect: () => <Matcher>[
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.loading),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.failure)
          .having((GardenPlantDetailState s) => s.error, 'error', isA<Exception>()),
    ],
  );

  blocTest<GardenPlantDetailCubit, GardenPlantDetailState>(
    'loadPlant in species mode loads only species details by slug',
    setUp: () {
      when(() => mockDetailsRepository.getPlant('ficus-elastica'))
          .thenAnswer((_) async => MockPlantDetailsModel());
    },
    build: () => GardenPlantDetailCubit(
      gardenPlantsRepository: mockRepository,
      plantDetailsRepository: mockDetailsRepository,
      speciesSlug: 'ficus-elastica',
    ),
    act: (GardenPlantDetailCubit cubit) => cubit.loadPlant(),
    expect: () => <Matcher>[
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.loading),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.success)
          .having((GardenPlantDetailState s) => s.plant, 'plant', isNull)
          .having(
            (GardenPlantDetailState s) => s.speciesDetails,
            'details',
            isA<PlantDetailsModel>(),
          ),
    ],
    verify: (_) {
      verifyNever(
        () => mockRepository.getGardenPlant(plantId: any(named: 'plantId')),
      );
    },
  );

  blocTest<GardenPlantDetailCubit, GardenPlantDetailState>(
    'loadPlant in species mode emits failure when species load fails',
    setUp: () {
      when(() => mockDetailsRepository.getPlant('ficus-elastica'))
          .thenThrow(Exception('network'));
    },
    build: () => GardenPlantDetailCubit(
      gardenPlantsRepository: mockRepository,
      plantDetailsRepository: mockDetailsRepository,
      speciesSlug: 'ficus-elastica',
    ),
    act: (GardenPlantDetailCubit cubit) => cubit.loadPlant(),
    expect: () => <Matcher>[
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.loading),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.failure)
          .having((GardenPlantDetailState s) => s.error, 'error', isA<Exception>()),
    ],
  );

  blocTest<GardenPlantDetailCubit, GardenPlantDetailState>(
    'reloadAfterEdit reloads the plant and marks wasUpdated',
    setUp: () {
      when(() => mockRepository.getGardenPlant(plantId: 1))
          .thenAnswer((_) async => plant.copyWith(customName: 'Renamed'));
    },
    seed: () => const GardenPlantDetailState(
      status: Status.success,
      plantId: 1,
      plant: plant,
    ),
    build: buildCubit,
    act: (GardenPlantDetailCubit cubit) => cubit.reloadAfterEdit(),
    expect: () => <Matcher>[
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.wasUpdated, 'wasUpdated', isTrue),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.loading),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.status, 'status', Status.success)
          .having((GardenPlantDetailState s) => s.wasUpdated, 'wasUpdated', isTrue)
          .having(
            (GardenPlantDetailState s) => s.plant?.customName,
            'name',
            'Renamed',
          ),
    ],
    verify: (_) {
      verify(() => mockRepository.getGardenPlant(plantId: 1)).called(1);
    },
  );

  blocTest<GardenPlantDetailCubit, GardenPlantDetailState>(
    'deletePhoto removes image then reloads the plant',
    setUp: () {
      when(() => mockRepository.deleteGardenPlantImage(plantId: 1))
          .thenAnswer((_) async {});
      when(() => mockRepository.getGardenPlant(plantId: 1))
          .thenAnswer((_) async => plant);
    },
    seed: () => GardenPlantDetailState(
      status: Status.success,
      plantId: 1,
      plant: plant.copyWith(imageUrl: 'https://example.com/p.jpg'),
    ),
    build: buildCubit,
    act: (GardenPlantDetailCubit cubit) => cubit.deletePhoto(),
    expect: () => <Matcher>[
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.isSaving, 'isSaving', isTrue),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.isSaving, 'isSaving', isFalse)
          .having((GardenPlantDetailState s) => s.wasUpdated, 'wasUpdated', isTrue),
    ],
    verify: (_) {
      verify(() => mockRepository.deleteGardenPlantImage(plantId: 1)).called(1);
      verify(() => mockRepository.getGardenPlant(plantId: 1)).called(1);
    },
  );

  blocTest<GardenPlantDetailCubit, GardenPlantDetailState>(
    'deletePlant marks wasDeleted on success',
    setUp: () {
      when(() => mockRepository.deleteGardenPlant(plantId: 1))
          .thenAnswer((_) async {});
    },
    seed: () => const GardenPlantDetailState(
      status: Status.success,
      plantId: 1,
      plant: plant,
    ),
    build: buildCubit,
    act: (GardenPlantDetailCubit cubit) => cubit.deletePlant(),
    expect: () => <Matcher>[
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.isSaving, 'isSaving', isTrue),
      isA<GardenPlantDetailState>()
          .having((GardenPlantDetailState s) => s.isSaving, 'isSaving', isFalse)
          .having((GardenPlantDetailState s) => s.wasDeleted, 'wasDeleted', isTrue),
    ],
    verify: (_) {
      verify(() => mockRepository.deleteGardenPlant(plantId: 1)).called(1);
    },
  );
}
