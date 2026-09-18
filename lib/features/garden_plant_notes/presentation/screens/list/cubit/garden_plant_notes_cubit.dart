import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plant_notes/domain/repository/export.dart';

part 'garden_plant_notes_cubit.freezed.dart';
part 'garden_plant_notes_state.dart';

class GardenPlantNotesCubit extends Cubit<GardenPlantNotesState> {
  GardenPlantNotesCubit({
    required IPlantNotesRepository plantNotesRepository,
    required int plantId,
  }) : _repository = plantNotesRepository,
       super(GardenPlantNotesState(status: Status.initial, plantId: plantId));

  final IPlantNotesRepository _repository;

  Future<void> loadNotes() async {
    emit(state.copyWith(status: Status.loading, error: null));
    try {
      final List<PlantNoteModel> notes = await _repository.getNotes(
        plantId: state.plantId,
      );
      if (isClosed) {
        return;
      }
      emit(state.copyWith(status: Status.success, notes: notes, error: null));
    } catch (error) {
      if (isClosed) {
        return;
      }
      emit(state.copyWith(status: Status.failure, error: error));
    }
  }
}
