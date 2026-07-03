import 'dart:typed_data';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/reposiotory/export.dart';

part 'garden_plant_detail_cubit.freezed.dart';
part 'garden_plant_detail_state.dart';

class GardenPlantDetailCubit extends Cubit<GardenPlantDetailState> {
  GardenPlantDetailCubit({
    required IGardenPlantsRepository gardenPlantsRepository,
    required IPlantDetailsRepository plantDetailsRepository,
    required int plantId,
  })  : _repository = gardenPlantsRepository,
        _plantDetailsRepository = plantDetailsRepository,
        super(
          GardenPlantDetailState(
            status: Status.initial,
            plantId: plantId,
          ),
        );

  final IGardenPlantsRepository _repository;
  final IPlantDetailsRepository _plantDetailsRepository;

  Future<void> loadPlant() async {
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        speciesDetails: null,
      ),
    );
    try {
      final GardenPlantModel plant = await _repository.getGardenPlant(
        plantId: state.plantId,
      );
      PlantDetailsModel? speciesDetails;
      final String? speciesSlug = plant.speciesSlug;
      if (speciesSlug != null && speciesSlug.isNotEmpty) {
        try {
          speciesDetails = await _plantDetailsRepository.getPlant(speciesSlug);
        } catch (_) {
          speciesDetails = null;
        }
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
      emit(
        state.copyWith(
          status: Status.failure,
          error: error,
        ),
      );
    }
  }

  Future<bool> saveChanges({
    required String customName,
    int? roomId,
  }) async {
    final GardenPlantModel? currentPlant = state.plant;
    if (currentPlant == null || state.isSaving) {
      return false;
    }
    emit(state.copyWith(isSaving: true, error: null));
    try {
      GardenPlantModel plant = await _repository.updateGardenPlant(
        params: UpdateGardenPlantParams(
          plantId: currentPlant.id,
          customName: customName,
          roomId: roomId,
          sunlightExposure: currentPlant.sunlightExposure,
          plantSize: currentPlant.plantSize,
          potSizeMm: currentPlant.potSizeMm,
          lastWatering: currentPlant.lastWatering,
          lastWateringExactDate: currentPlant.lastWateringExactDate,
          lastRepotting: currentPlant.lastRepotting,
          lastRepottingExactDate: currentPlant.lastRepottingExactDate,
        ),
      );
      final Uint8List? photoBytes = state.pendingPhotoBytes;
      final String? photoFileName = state.pendingPhotoFileName;
      if (photoBytes != null && photoFileName != null) {
        plant = await _repository.uploadGardenPlantImage(
          plantId: plant.id,
          bytes: photoBytes,
          fileName: photoFileName,
        );
      }
      emit(
        state.copyWith(
          status: Status.success,
          plant: plant,
          isSaving: false,
          pendingPhotoBytes: null,
          pendingPhotoFileName: null,
          wasUpdated: true,
        ),
      );
      return true;
    } catch (error) {
      emit(
        state.copyWith(
          isSaving: false,
          error: error,
        ),
      );
      return false;
    }
  }

  void setPendingPhoto({
    required Uint8List bytes,
    required String fileName,
  }) {
    emit(
      state.copyWith(
        pendingPhotoBytes: bytes,
        pendingPhotoFileName: fileName,
        removeExistingPhoto: false,
      ),
    );
  }

  void clearPendingPhoto() {
    emit(
      state.copyWith(
        pendingPhotoBytes: null,
        pendingPhotoFileName: null,
      ),
    );
  }

  void markRemoveExistingPhoto() {
    emit(
      state.copyWith(
        removeExistingPhoto: true,
        pendingPhotoBytes: null,
        pendingPhotoFileName: null,
      ),
    );
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
      emit(
        state.copyWith(
          status: Status.success,
          plant: plant,
          isSaving: false,
          pendingPhotoBytes: null,
          pendingPhotoFileName: null,
          removeExistingPhoto: false,
          wasUpdated: true,
        ),
      );
      return true;
    } catch (error) {
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
      emit(
        state.copyWith(
          isSaving: false,
          wasDeleted: true,
        ),
      );
      return true;
    } catch (error) {
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
