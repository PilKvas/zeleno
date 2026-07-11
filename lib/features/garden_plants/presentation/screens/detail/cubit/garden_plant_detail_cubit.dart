import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/repository/export.dart';

part 'garden_plant_detail_cubit.freezed.dart';
part 'garden_plant_detail_state.dart';

/// Единый детальный экран растения работает в двух режимах:
/// - «экземпляр из сада» — задан [GardenPlantDetailState.plantId];
/// - «вид из каталога» — задан только [GardenPlantDetailState.speciesSlug]
///   (открытие из поиска, садового растения ещё нет).
class GardenPlantDetailCubit extends Cubit<GardenPlantDetailState> {
  GardenPlantDetailCubit({
    required IGardenPlantsRepository gardenPlantsRepository,
    required IPlantDetailsRepository plantDetailsRepository,
    int? plantId,
    String? speciesSlug,
  })  : assert(
          plantId != null || speciesSlug != null,
          'Нужен plantId (сад) или speciesSlug (каталог)',
        ),
        _repository = gardenPlantsRepository,
        _plantDetailsRepository = plantDetailsRepository,
        super(
          GardenPlantDetailState(
            status: Status.initial,
            plantId: plantId,
            speciesSlug: speciesSlug,
          ),
        );

  final IGardenPlantsRepository _repository;
  final IPlantDetailsRepository _plantDetailsRepository;

  Future<void> loadPlant() async {
    final int? plantId = state.plantId;
    if (plantId == null) {
      await _loadSpeciesOnly();
      return;
    }
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        speciesDetails: null,
      ),
    );
    try {
      final GardenPlantModel plant = await _repository.getGardenPlant(
        plantId: plantId,
      );
      PlantDetailsModel? speciesDetails;
      final String? speciesSlug = plant.speciesSlug;
      if (speciesSlug != null && speciesSlug.isNotEmpty) {
        // Справочные данные вида — вторичны: их отсутствие
        // не должно ломать карточку садового растения.
        try {
          speciesDetails = await _plantDetailsRepository.getPlant(speciesSlug);
        } catch (_) {
          speciesDetails = null;
        }
      }
      if (isClosed) {
        return;
      }
      emit(
        state.copyWith(
          status: Status.success,
          plant: plant,
          speciesDetails: speciesDetails,
          error: null,
        ),
      );
    } catch (error) {
      if (isClosed) {
        return;
      }
      emit(
        state.copyWith(
          status: Status.failure,
          error: error,
        ),
      );
    }
  }

  Future<void> _loadSpeciesOnly() async {
    final String? speciesSlug = state.speciesSlug;
    if (speciesSlug == null || speciesSlug.isEmpty) {
      return;
    }
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        speciesDetails: null,
      ),
    );
    try {
      final PlantDetailsModel speciesDetails =
          await _plantDetailsRepository.getPlant(speciesSlug);
      if (isClosed) {
        return;
      }
      emit(
        state.copyWith(
          status: Status.success,
          speciesDetails: speciesDetails,
          error: null,
        ),
      );
    } catch (error) {
      if (isClosed) {
        return;
      }
      emit(
        state.copyWith(
          status: Status.failure,
          error: error,
        ),
      );
    }
  }

  /// Растение изменили на другом экране — перечитываем и помечаем,
  /// что при возврате назад список должен обновиться.
  Future<void> reloadAfterEdit() async {
    emit(state.copyWith(wasUpdated: true));
    await loadPlant();
  }

  Future<bool> deletePhoto() async {
    final GardenPlantModel? currentPlant = state.plant;
    if (currentPlant == null || state.isSaving) {
      return false;
    }
    emit(state.copyWith(isSaving: true, error: null));
    try {
      await _repository.deleteGardenPlantImage(plantId: currentPlant.id);
      final GardenPlantModel plant = await _repository.getGardenPlant(
        plantId: currentPlant.id,
      );
      if (isClosed) {
        return true;
      }
      emit(
        state.copyWith(
          status: Status.success,
          plant: plant,
          isSaving: false,
          wasUpdated: true,
        ),
      );
      return true;
    } catch (error) {
      if (isClosed) {
        return false;
      }
      emit(
        state.copyWith(
          isSaving: false,
          error: error,
        ),
      );
      return false;
    }
  }

  Future<bool> deletePlant() async {
    final GardenPlantModel? currentPlant = state.plant;
    if (currentPlant == null || state.isSaving) {
      return false;
    }
    emit(state.copyWith(isSaving: true, error: null));
    try {
      await _repository.deleteGardenPlant(plantId: currentPlant.id);
      if (isClosed) {
        return true;
      }
      emit(
        state.copyWith(
          isSaving: false,
          wasDeleted: true,
        ),
      );
      return true;
    } catch (error) {
      if (isClosed) {
        return false;
      }
      emit(
        state.copyWith(
          isSaving: false,
          error: error,
        ),
      );
      return false;
    }
  }
}
