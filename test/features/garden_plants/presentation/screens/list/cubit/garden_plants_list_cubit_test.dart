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

  const GardenPlantModel ficusInRoom3 = GardenPlantModel(
    id: 1,
    customName: 'My ficus',
    roomId: 3,
  );
  const GardenPlantModel cactusInRoom5 = GardenPlantModel(
    id: 2,
    customName: 'My cactus',
    roomId: 5,
  );
  const List<GardenPlantModel> plants = <GardenPlantModel>[
    ficusInRoom3,
    cactusInRoom5,
  ];

  setUp(() {
    mockRepository = MockGardenPlantsRepository();
  });

  blocTest<GardenPlantsListCubit, GardenPlantsListState>(
    'emits success with plants list',
    setUp: () {
      when(
        () => mockRepository.getGardenPlants(),
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
    'selectRoom filters loaded plants in memory without repository call',
    build: () => GardenPlantsListCubit(gardenPlantsRepository: mockRepository),
    seed: () => const GardenPlantsListState(
      status: Status.success,
      plants: plants,
    ),
    act: (GardenPlantsListCubit cubit) => cubit.selectRoom(3),
    expect: () => <GardenPlantsListState>[
      const GardenPlantsListState(
        status: Status.success,
        plants: plants,
        selectedRoomId: 3,
      ),
    ],
    verify: (GardenPlantsListCubit cubit) {
      expect(cubit.state.visiblePlants, <GardenPlantModel>[ficusInRoom3]);
      verifyNever(() => mockRepository.getGardenPlants());
    },
  );

  blocTest<GardenPlantsListCubit, GardenPlantsListState>(
    'clears room filter when selecting all rooms',
    build: () => GardenPlantsListCubit(gardenPlantsRepository: mockRepository),
    seed: () => const GardenPlantsListState(
      status: Status.success,
      plants: plants,
      selectedRoomId: 3,
    ),
    act: (GardenPlantsListCubit cubit) => cubit.selectRoom(null),
    expect: () => <GardenPlantsListState>[
      const GardenPlantsListState(
        status: Status.success,
        plants: plants,
        selectedRoomId: null,
      ),
    ],
    verify: (GardenPlantsListCubit cubit) {
      expect(cubit.state.visiblePlants, plants);
      verifyNever(() => mockRepository.getGardenPlants());
    },
  );

  blocTest<GardenPlantsListCubit, GardenPlantsListState>(
    'emits failure when load fails',
    setUp: () {
      when(
        () => mockRepository.getGardenPlants(),
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
