import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_result.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/update_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/garden_plant_model.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/i_garden_plants_repository.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/add/cubit/add_garden_plant_cubit.dart';

class MockGardenPlantsRepository extends Mock
    implements IGardenPlantsRepository {}

void main() {
  late MockGardenPlantsRepository mockRepository;

  const GardenPlantModel plant = GardenPlantModel(
    id: 1,
    customName: 'My ficus',
    speciesId: 42,
    roomId: 3,
  );

  const GardenPlantModel editingPlant = GardenPlantModel(
    id: 7,
    customName: 'Old name',
    speciesId: 42,
    roomId: 3,
    speciesSlug: 'ficus-elastica',
  );

  setUp(() {
    mockRepository = MockGardenPlantsRepository();
    registerFallbackValue(
      const CreateGardenPlantParams(
        speciesId: 42,
        customName: 'My ficus',
        roomId: 3,
      ),
    );
    registerFallbackValue(
      const UpdateGardenPlantParams(
        plantId: 7,
        customName: 'Old name',
      ),
    );
  });

  AddGardenPlantCubit buildCubit() {
    return AddGardenPlantCubit.create(
      gardenPlantsRepository: mockRepository,
      speciesId: 42,
      roomId: 3,
    );
  }

  blocTest<AddGardenPlantCubit, AddGardenPlantState>(
    'emits validation message when name is empty',
    build: buildCubit,
    act: (AddGardenPlantCubit cubit) async {
      cubit.updateCustomName('   ');
      await cubit.submit();
    },
    expect: () => <AddGardenPlantState>[
      const AddGardenPlantState(
        status: Status.initial,
        speciesId: 42,
        roomId: 3,
        customName: '   ',
      ),
      const AddGardenPlantState(
        status: Status.initial,
        speciesId: 42,
        roomId: 3,
        customName: '   ',
        validationMessage: 'empty_name',
      ),
    ],
  );

  blocTest<AddGardenPlantCubit, AddGardenPlantState>(
    'emits success when plant is created',
    setUp: () {
      when(
        () => mockRepository.createGardenPlant(
          params: any(named: 'params'),
        ),
      ).thenAnswer((_) async => const CreateGardenPlantResult(plant: plant));
    },
    build: buildCubit,
    act: (AddGardenPlantCubit cubit) async {
      cubit.updateCustomName('My ficus');
      await cubit.submit();
    },
    expect: () => <dynamic>[
      const AddGardenPlantState(
        status: Status.initial,
        speciesId: 42,
        roomId: 3,
        customName: 'My ficus',
      ),
      const AddGardenPlantState(
        status: Status.loading,
        speciesId: 42,
        roomId: 3,
        customName: 'My ficus',
      ),
      const AddGardenPlantState(
        status: Status.success,
        speciesId: 42,
        roomId: 3,
        customName: 'My ficus',
        createdPlant: plant,
      ),
    ],
  );

  blocTest<AddGardenPlantCubit, AddGardenPlantState>(
    'ignores duplicate submit while loading',
    setUp: () {
      when(
        () => mockRepository.createGardenPlant(
          params: any(named: 'params'),
        ),
      ).thenAnswer((_) async {
        await Future<void>.delayed(const Duration(milliseconds: 100));
        return const CreateGardenPlantResult(plant: plant);
      });
    },
    build: buildCubit,
    act: (AddGardenPlantCubit cubit) async {
      cubit.updateCustomName('My ficus');
      final Future<void> first = cubit.submit();
      await cubit.submit();
      await first;
    },
    verify: (_) {
      verify(
        () => mockRepository.createGardenPlant(
          params: any(named: 'params'),
        ),
      ).called(1);
    },
  );

  group('edit mode', () {
    test('loads the plant on construction', () async {
      when(() => mockRepository.getGardenPlant(plantId: 7))
          .thenAnswer((_) async => editingPlant);

      final AddGardenPlantCubit cubit = AddGardenPlantCubit.edit(
        gardenPlantsRepository: mockRepository,
        plantId: 7,
      );
      addTearDown(cubit.close);

      final AddGardenPlantState loaded = await cubit.stream.firstWhere(
        (AddGardenPlantState s) => s.status.isSuccess,
      );

      expect(loaded.editingPlant, editingPlant);
      expect(loaded.customName, 'Old name');
      expect(loaded.plantId, 7);
      verify(() => mockRepository.getGardenPlant(plantId: 7)).called(1);
    });

    test('emits failure when initial load fails', () async {
      when(() => mockRepository.getGardenPlant(plantId: 7))
          .thenThrow(Exception('network'));

      final AddGardenPlantCubit cubit = AddGardenPlantCubit.edit(
        gardenPlantsRepository: mockRepository,
        plantId: 7,
      );
      addTearDown(cubit.close);
      await Future<void>.delayed(Duration.zero);

      expect(cubit.state.status.isFailure, isTrue);
      expect(cubit.state.error, isA<Exception>());
      expect(cubit.state.editingPlant, isNull);
    });

    test('submit updates the plant and marks wasUpdated', () async {
      const GardenPlantModel updatedPlant = GardenPlantModel(
        id: 7,
        customName: 'New name',
        speciesId: 42,
        roomId: 3,
        speciesSlug: 'ficus-elastica',
      );
      when(() => mockRepository.getGardenPlant(plantId: 7))
          .thenAnswer((_) async => editingPlant);
      when(() => mockRepository.updateGardenPlant(params: any(named: 'params')))
          .thenAnswer((_) async => updatedPlant);

      final AddGardenPlantCubit cubit = AddGardenPlantCubit.edit(
        gardenPlantsRepository: mockRepository,
        plantId: 7,
      );
      addTearDown(cubit.close);
      await cubit.stream.firstWhere((AddGardenPlantState s) => s.status.isSuccess);

      cubit.updateCustomName('New name');
      await cubit.submit();

      expect(cubit.state.wasUpdated, isTrue);
      expect(cubit.state.editingPlant, updatedPlant);
      verify(
        () => mockRepository.updateGardenPlant(params: any(named: 'params')),
      ).called(1);
    });
  });
}
