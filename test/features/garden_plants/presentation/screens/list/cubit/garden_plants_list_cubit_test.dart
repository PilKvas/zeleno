import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/garden_plant_model.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/i_garden_plants_repository.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/list/cubit/garden_plants_list_cubit.dart';

class MockGardenPlantsRepository extends Mock
    implements IGardenPlantsRepository {}

void main() {
  late MockGardenPlantsRepository mockRepository;

  const List<GardenPlantModel> plants = <GardenPlantModel>[
    GardenPlantModel(
      id: 1,
      customName: 'My ficus',
    ),
  ];

  setUp(() {
    mockRepository = MockGardenPlantsRepository();
  });

  blocTest<GardenPlantsListCubit, GardenPlantsListState>(
    'emits success with plants list',
    setUp: () {
      when(
        () => mockRepository.getGardenPlants(roomId: null),
      ).thenAnswer((_) async => plants);
    },
    build: () => GardenPlantsListCubit(gardenPlantsRepository: mockRepository),
    act: (GardenPlantsListCubit cubit) => cubit.loadPlants(),
    expect: () => <GardenPlantsListState>[
      const GardenPlantsListState(status: Status.loading),
      const GardenPlantsListState(
        status: Status.success,
        plants: plants,
      ),
    ],
  );

  blocTest<GardenPlantsListCubit, GardenPlantsListState>(
    'loads plants for selected room',
    setUp: () {
      when(
        () => mockRepository.getGardenPlants(roomId: 3),
      ).thenAnswer((_) async => plants);
    },
    build: () => GardenPlantsListCubit(gardenPlantsRepository: mockRepository),
    act: (GardenPlantsListCubit cubit) => cubit.selectRoom(3),
    expect: () => <GardenPlantsListState>[
      const GardenPlantsListState(
        status: Status.loading,
        selectedRoomId: 3,
      ),
      const GardenPlantsListState(
        status: Status.success,
        plants: plants,
        selectedRoomId: 3,
      ),
    ],
  );

  blocTest<GardenPlantsListCubit, GardenPlantsListState>(
    'clears room filter when selecting all rooms',
    setUp: () {
      when(
        () => mockRepository.getGardenPlants(roomId: 3),
      ).thenAnswer((_) async => plants);
      when(
        () => mockRepository.getGardenPlants(roomId: null),
      ).thenAnswer((_) async => plants);
    },
    build: () => GardenPlantsListCubit(gardenPlantsRepository: mockRepository),
    act: (GardenPlantsListCubit cubit) async {
      await cubit.selectRoom(3);
      await cubit.selectRoom(null);
    },
    expect: () => <GardenPlantsListState>[
      const GardenPlantsListState(
        status: Status.loading,
        selectedRoomId: 3,
      ),
      const GardenPlantsListState(
        status: Status.success,
        plants: plants,
        selectedRoomId: 3,
      ),
      const GardenPlantsListState(
        status: Status.loading,
        plants: plants,
        selectedRoomId: null,
      ),
      const GardenPlantsListState(
        status: Status.success,
        plants: plants,
        selectedRoomId: null,
      ),
    ],
    verify: (_) {
      verify(() => mockRepository.getGardenPlants(roomId: 3)).called(1);
      verify(() => mockRepository.getGardenPlants(roomId: null)).called(1);
    },
  );

  blocTest<GardenPlantsListCubit, GardenPlantsListState>(
    'emits failure when load fails',
    setUp: () {
      when(
        () => mockRepository.getGardenPlants(roomId: null),
      ).thenThrow(Exception('network'));
    },
    build: () => GardenPlantsListCubit(gardenPlantsRepository: mockRepository),
    act: (GardenPlantsListCubit cubit) => cubit.loadPlants(),
    expect: () => <dynamic>[
      const GardenPlantsListState(status: Status.loading),
      isA<GardenPlantsListState>()
          .having(
              (GardenPlantsListState s) => s.status, 'status', Status.failure)
          .having(
              (GardenPlantsListState s) => s.error, 'error', isA<Exception>()),
    ],
  );
}
