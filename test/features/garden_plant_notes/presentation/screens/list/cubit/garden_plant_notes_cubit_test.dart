import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/plant_note_model.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/repository/i_plant_notes_repository.dart';
import 'package:zeleno_v2/features/garden_plant_notes/presentation/screens/list/cubit/garden_plant_notes_cubit.dart';

class MockPlantNotesRepository extends Mock implements IPlantNotesRepository {}

void main() {
  late MockPlantNotesRepository mockRepository;

  final PlantNoteModel note = PlantNoteModel(
    id: 1,
    plantId: 7,
    title: 'Title',
    content: 'Content',
    createdAt: DateTime.utc(2026, 9, 1),
    updatedAt: DateTime.utc(2026, 9, 1),
  );

  setUp(() {
    mockRepository = MockPlantNotesRepository();
  });

  GardenPlantNotesCubit buildCubit() {
    return GardenPlantNotesCubit(
      plantNotesRepository: mockRepository,
      plantId: 7,
    );
  }

  blocTest<GardenPlantNotesCubit, GardenPlantNotesState>(
    'loadNotes emits loading then success with notes',
    setUp: () {
      when(
        () => mockRepository.getNotes(plantId: 7),
      ).thenAnswer((_) async => <PlantNoteModel>[note]);
    },
    build: buildCubit,
    act: (GardenPlantNotesCubit cubit) => cubit.loadNotes(),
    expect: () => <Matcher>[
      isA<GardenPlantNotesState>().having(
        (GardenPlantNotesState s) => s.status,
        'status',
        Status.loading,
      ),
      isA<GardenPlantNotesState>()
          .having(
            (GardenPlantNotesState s) => s.status,
            'status',
            Status.success,
          )
          .having(
            (GardenPlantNotesState s) => s.notes,
            'notes',
            <PlantNoteModel>[note],
          ),
    ],
  );

  blocTest<GardenPlantNotesCubit, GardenPlantNotesState>(
    'loadNotes emits failure with error when repository throws',
    setUp: () {
      when(
        () => mockRepository.getNotes(plantId: 7),
      ).thenThrow(Exception('network'));
    },
    build: buildCubit,
    act: (GardenPlantNotesCubit cubit) => cubit.loadNotes(),
    expect: () => <Matcher>[
      isA<GardenPlantNotesState>().having(
        (GardenPlantNotesState s) => s.status,
        'status',
        Status.loading,
      ),
      isA<GardenPlantNotesState>()
          .having(
            (GardenPlantNotesState s) => s.status,
            'status',
            Status.failure,
          )
          .having((GardenPlantNotesState s) => s.error, 'error', isNotNull),
    ],
  );
}
