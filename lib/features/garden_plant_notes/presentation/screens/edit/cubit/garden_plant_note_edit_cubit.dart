import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/entities/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/repository/export.dart';

part 'garden_plant_note_edit_cubit.freezed.dart';
part 'garden_plant_note_edit_state.dart';

/// Лимиты полей из схемы бэка (`PlantNoteCreateSchema`).
const int kPlantNoteTitleMaxLength = 128;
const int kPlantNoteContentMaxLength = 512;

enum PlantNoteValidationError {
  emptyTitle,
  titleTooLong,
  emptyContent,
  contentTooLong,
}

/// Создание (`note == null`) и редактирование заметки на одном кубите.
class GardenPlantNoteEditCubit extends Cubit<GardenPlantNoteEditState> {
  GardenPlantNoteEditCubit({
    required IPlantNotesRepository plantNotesRepository,
    required int plantId,
    PlantNoteModel? note,
  }) : _repository = plantNotesRepository,
       super(
         GardenPlantNoteEditState(
           status: Status.initial,
           plantId: plantId,
           note: note,
           title: note?.title ?? '',
           content: note?.content ?? '',
         ),
       );

  final IPlantNotesRepository _repository;

  void updateTitle(String value) {
    emit(state.copyWith(title: value, validationError: null, error: null));
  }

  void updateContent(String value) {
    emit(state.copyWith(content: value, validationError: null, error: null));
  }

  Future<void> submit() async {
    if (state.status.isLoading) {
      return;
    }
    final String title = state.title.trim();
    final String content = state.content.trim();
    final PlantNoteValidationError? validationError = _validate(
      title: title,
      content: content,
    );
    if (validationError != null) {
      emit(state.copyWith(validationError: validationError));
      return;
    }
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        validationError: null,
      ),
    );
    try {
      final PlantNoteModel? note = state.note;
      final PlantNoteModel saved = note == null
          ? await _repository.createNote(
              params: CreatePlantNoteParams(
                plantId: state.plantId,
                title: title,
                content: content,
              ),
            )
          : await _repository.updateNote(
              params: UpdatePlantNoteParams(
                plantId: state.plantId,
                noteId: note.id,
                title: title,
                content: content,
              ),
            );
      if (isClosed) {
        return;
      }
      emit(state.copyWith(status: Status.success, note: saved, wasSaved: true));
    } catch (error) {
      if (isClosed) {
        return;
      }
      emit(state.copyWith(status: Status.failure, error: error));
    }
  }

  Future<void> delete() async {
    final PlantNoteModel? note = state.note;
    if (note == null || state.status.isLoading) {
      return;
    }
    emit(state.copyWith(status: Status.loading, error: null, isDeleting: true));
    try {
      await _repository.deleteNote(plantId: state.plantId, noteId: note.id);
      if (isClosed) {
        return;
      }
      emit(
        state.copyWith(
          status: Status.success,
          isDeleting: false,
          wasDeleted: true,
        ),
      );
    } catch (error) {
      if (isClosed) {
        return;
      }
      emit(
        state.copyWith(status: Status.failure, isDeleting: false, error: error),
      );
    }
  }

  static PlantNoteValidationError? _validate({
    required String title,
    required String content,
  }) {
    if (title.isEmpty) {
      return PlantNoteValidationError.emptyTitle;
    }
    if (title.length > kPlantNoteTitleMaxLength) {
      return PlantNoteValidationError.titleTooLong;
    }
    if (content.isEmpty) {
      return PlantNoteValidationError.emptyContent;
    }
    if (content.length > kPlantNoteContentMaxLength) {
      return PlantNoteValidationError.contentTooLong;
    }
    return null;
  }
}
