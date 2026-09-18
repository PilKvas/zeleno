import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/entities/create_plant_note_params.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/entities/update_plant_note_params.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/plant_note_model.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/repository/i_plant_notes_repository.dart';
import 'package:zeleno_v2/features/garden_plant_notes/presentation/screens/edit/cubit/garden_plant_note_edit_cubit.dart';

class MockPlantNotesRepository extends Mock implements IPlantNotesRepository {}

void main() {
  late MockPlantNotesRepository mockRepository;

  final PlantNoteModel existingNote = PlantNoteModel(
    id: 5,
    plantId: 7,
    title: 'Old title',
    content: 'Old content',
    createdAt: DateTime.utc(2026, 9, 1),
    updatedAt: DateTime.utc(2026, 9, 1),
  );

  final PlantNoteModel savedNote = existingNote.copyWith(
    title: 'Title',
    content: 'Content',
    updatedAt: DateTime.utc(2026, 9, 11),
  );

  setUpAll(() {
    registerFallbackValue(
      const CreatePlantNoteParams(plantId: 0, title: '', content: ''),
    );
    registerFallbackValue(
      const UpdatePlantNoteParams(
        plantId: 0,
        noteId: 0,
        title: '',
        content: '',
      ),
    );
  });

  setUp(() {
    mockRepository = MockPlantNotesRepository();
  });

  GardenPlantNoteEditCubit buildCreateCubit() {
    return GardenPlantNoteEditCubit(
      plantNotesRepository: mockRepository,
      plantId: 7,
    );
  }

  GardenPlantNoteEditCubit buildEditCubit() {
    return GardenPlantNoteEditCubit(
      plantNotesRepository: mockRepository,
      plantId: 7,
      note: existingNote,
    );
  }

  test('edit mode is prefilled from the note', () {
    final GardenPlantNoteEditCubit cubit = buildEditCubit();
    expect(cubit.state.isEditMode, isTrue);
    expect(cubit.state.title, 'Old title');
    expect(cubit.state.content, 'Old content');
  });

  group('validation', () {
    blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
      'empty title',
      build: buildCreateCubit,
      act: (GardenPlantNoteEditCubit cubit) {
        cubit.updateTitle('   ');
        cubit.updateContent('Content');
        return cubit.submit();
      },
      skip: 2,
      expect: () => <Matcher>[
        isA<GardenPlantNoteEditState>().having(
          (GardenPlantNoteEditState s) => s.validationError,
          'validationError',
          PlantNoteValidationError.emptyTitle,
        ),
      ],
      verify: (_) => verifyNever(
        () => mockRepository.createNote(params: any(named: 'params')),
      ),
    );

    blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
      'title too long',
      build: buildCreateCubit,
      act: (GardenPlantNoteEditCubit cubit) {
        cubit.updateTitle('a' * (kPlantNoteTitleMaxLength + 1));
        cubit.updateContent('Content');
        return cubit.submit();
      },
      skip: 2,
      expect: () => <Matcher>[
        isA<GardenPlantNoteEditState>().having(
          (GardenPlantNoteEditState s) => s.validationError,
          'validationError',
          PlantNoteValidationError.titleTooLong,
        ),
      ],
    );

    blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
      'empty content',
      build: buildCreateCubit,
      act: (GardenPlantNoteEditCubit cubit) {
        cubit.updateTitle('Title');
        cubit.updateContent(' ');
        return cubit.submit();
      },
      skip: 2,
      expect: () => <Matcher>[
        isA<GardenPlantNoteEditState>().having(
          (GardenPlantNoteEditState s) => s.validationError,
          'validationError',
          PlantNoteValidationError.emptyContent,
        ),
      ],
    );

    blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
      'content too long',
      build: buildCreateCubit,
      act: (GardenPlantNoteEditCubit cubit) {
        cubit.updateTitle('Title');
        cubit.updateContent('a' * (kPlantNoteContentMaxLength + 1));
        return cubit.submit();
      },
      skip: 2,
      expect: () => <Matcher>[
        isA<GardenPlantNoteEditState>().having(
          (GardenPlantNoteEditState s) => s.validationError,
          'validationError',
          PlantNoteValidationError.contentTooLong,
        ),
      ],
    );

    blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
      'editing a field clears validation error',
      build: buildCreateCubit,
      act: (GardenPlantNoteEditCubit cubit) async {
        await cubit.submit();
        cubit.updateTitle('T');
      },
      expect: () => <Matcher>[
        isA<GardenPlantNoteEditState>().having(
          (GardenPlantNoteEditState s) => s.validationError,
          'validationError',
          PlantNoteValidationError.emptyTitle,
        ),
        isA<GardenPlantNoteEditState>().having(
          (GardenPlantNoteEditState s) => s.validationError,
          'validationError',
          isNull,
        ),
      ],
    );
  });

  blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
    'submit in create mode calls createNote with trimmed fields and sets wasSaved',
    setUp: () {
      when(
        () => mockRepository.createNote(params: any(named: 'params')),
      ).thenAnswer((_) async => savedNote);
    },
    build: buildCreateCubit,
    act: (GardenPlantNoteEditCubit cubit) {
      cubit.updateTitle(' Title ');
      cubit.updateContent(' Content ');
      return cubit.submit();
    },
    skip: 2,
    expect: () => <Matcher>[
      isA<GardenPlantNoteEditState>().having(
        (GardenPlantNoteEditState s) => s.status,
        'status',
        Status.loading,
      ),
      isA<GardenPlantNoteEditState>()
          .having(
            (GardenPlantNoteEditState s) => s.status,
            'status',
            Status.success,
          )
          .having((GardenPlantNoteEditState s) => s.wasSaved, 'wasSaved', true)
          .having((GardenPlantNoteEditState s) => s.note, 'note', savedNote),
    ],
    verify: (_) {
      final CreatePlantNoteParams params =
          verify(
                () => mockRepository.createNote(
                  params: captureAny(named: 'params'),
                ),
              ).captured.single
              as CreatePlantNoteParams;
      expect(params.plantId, 7);
      expect(params.title, 'Title');
      expect(params.content, 'Content');
    },
  );

  blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
    'submit in edit mode calls updateNote for the existing note',
    setUp: () {
      when(
        () => mockRepository.updateNote(params: any(named: 'params')),
      ).thenAnswer((_) async => savedNote);
    },
    build: buildEditCubit,
    act: (GardenPlantNoteEditCubit cubit) {
      cubit.updateTitle('Title');
      cubit.updateContent('Content');
      return cubit.submit();
    },
    skip: 2,
    expect: () => <Matcher>[
      isA<GardenPlantNoteEditState>().having(
        (GardenPlantNoteEditState s) => s.status,
        'status',
        Status.loading,
      ),
      isA<GardenPlantNoteEditState>()
          .having(
            (GardenPlantNoteEditState s) => s.status,
            'status',
            Status.success,
          )
          .having((GardenPlantNoteEditState s) => s.wasSaved, 'wasSaved', true),
    ],
    verify: (_) {
      final UpdatePlantNoteParams params =
          verify(
                () => mockRepository.updateNote(
                  params: captureAny(named: 'params'),
                ),
              ).captured.single
              as UpdatePlantNoteParams;
      expect(params.noteId, 5);
      expect(params.title, 'Title');
      expect(params.content, 'Content');
      verifyNever(
        () => mockRepository.createNote(params: any(named: 'params')),
      );
    },
  );

  blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
    'submit emits failure with error when repository throws',
    setUp: () {
      when(
        () => mockRepository.createNote(params: any(named: 'params')),
      ).thenThrow(Exception('network'));
    },
    build: buildCreateCubit,
    act: (GardenPlantNoteEditCubit cubit) {
      cubit.updateTitle('Title');
      cubit.updateContent('Content');
      return cubit.submit();
    },
    skip: 3,
    expect: () => <Matcher>[
      isA<GardenPlantNoteEditState>()
          .having(
            (GardenPlantNoteEditState s) => s.status,
            'status',
            Status.failure,
          )
          .having((GardenPlantNoteEditState s) => s.error, 'error', isNotNull)
          .having(
            (GardenPlantNoteEditState s) => s.wasSaved,
            'wasSaved',
            false,
          ),
    ],
  );

  blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
    'second submit while loading is ignored',
    setUp: () {
      when(
        () => mockRepository.createNote(params: any(named: 'params')),
      ).thenAnswer((_) => Completer<PlantNoteModel>().future);
    },
    build: buildCreateCubit,
    act: (GardenPlantNoteEditCubit cubit) {
      cubit.updateTitle('Title');
      cubit.updateContent('Content');
      unawaited(cubit.submit());
      unawaited(cubit.submit());
    },
    verify: (_) => verify(
      () => mockRepository.createNote(params: any(named: 'params')),
    ).called(1),
  );

  blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
    'delete removes the note and sets wasDeleted',
    setUp: () {
      when(
        () => mockRepository.deleteNote(plantId: 7, noteId: 5),
      ).thenAnswer((_) async {});
    },
    build: buildEditCubit,
    act: (GardenPlantNoteEditCubit cubit) => cubit.delete(),
    expect: () => <Matcher>[
      isA<GardenPlantNoteEditState>()
          .having(
            (GardenPlantNoteEditState s) => s.status,
            'status',
            Status.loading,
          )
          .having(
            (GardenPlantNoteEditState s) => s.isDeleting,
            'isDeleting',
            true,
          ),
      isA<GardenPlantNoteEditState>()
          .having(
            (GardenPlantNoteEditState s) => s.status,
            'status',
            Status.success,
          )
          .having(
            (GardenPlantNoteEditState s) => s.wasDeleted,
            'wasDeleted',
            true,
          )
          .having(
            (GardenPlantNoteEditState s) => s.isDeleting,
            'isDeleting',
            false,
          ),
    ],
  );

  blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
    'delete in create mode does nothing',
    build: buildCreateCubit,
    act: (GardenPlantNoteEditCubit cubit) => cubit.delete(),
    expect: () => <Matcher>[],
    verify: (_) => verifyNever(
      () => mockRepository.deleteNote(
        plantId: any(named: 'plantId'),
        noteId: any(named: 'noteId'),
      ),
    ),
  );

  blocTest<GardenPlantNoteEditCubit, GardenPlantNoteEditState>(
    'delete emits failure with error when repository throws',
    setUp: () {
      when(
        () => mockRepository.deleteNote(plantId: 7, noteId: 5),
      ).thenThrow(Exception('network'));
    },
    build: buildEditCubit,
    act: (GardenPlantNoteEditCubit cubit) => cubit.delete(),
    skip: 1,
    expect: () => <Matcher>[
      isA<GardenPlantNoteEditState>()
          .having(
            (GardenPlantNoteEditState s) => s.status,
            'status',
            Status.failure,
          )
          .having((GardenPlantNoteEditState s) => s.error, 'error', isNotNull)
          .having(
            (GardenPlantNoteEditState s) => s.wasDeleted,
            'wasDeleted',
            false,
          ),
    ],
  );
}
