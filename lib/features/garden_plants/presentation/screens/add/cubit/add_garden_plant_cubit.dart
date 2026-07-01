import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_result.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/update_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/garden_plant_model.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/i_garden_plants_repository.dart';

part 'add_garden_plant_cubit.freezed.dart';
part 'add_garden_plant_state.dart';

class AddGardenPlantCubit extends Cubit<AddGardenPlantState> {
  AddGardenPlantCubit.create({
    required IGardenPlantsRepository gardenPlantsRepository,
    required int speciesId,
    required int roomId,
    String initialCustomName = '',
  })  : _repository = gardenPlantsRepository,
        super(
          AddGardenPlantState(
            status: Status.initial,
            speciesId: speciesId,
            roomId: roomId,
            customName: initialCustomName,
          ),
        );

  AddGardenPlantCubit.edit({
    required IGardenPlantsRepository gardenPlantsRepository,
    required int plantId,
  })  : _repository = gardenPlantsRepository,
        super(
          AddGardenPlantState(
            status: Status.loading,
            speciesId: 0,
            roomId: 0,
            plantId: plantId,
          ),
        ) {
    loadPlantForEdit();
  }

  final IGardenPlantsRepository _repository;

  Future<void> loadPlantForEdit() async {
    final int? plantId = state.plantId;
    if (plantId == null) {
      return;
    }
    emit(state.copyWith(status: Status.loading, error: null));
    try {
      final GardenPlantModel plant =
          await _repository.getGardenPlant(plantId: plantId);
      emit(
        state.copyWith(
          status: Status.success,
          editingPlant: plant,
          customName: plant.customName,
          speciesId: plant.speciesId ?? 0,
          roomId: plant.roomId ?? 0,
          existingImageUrl: plant.imageUrl,
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

  void updateCustomName(String value) {
    emit(
      state.copyWith(
        customName: value,
        validationMessage: null,
        error: null,
      ),
    );
  }

  void updatePhoto({
    required Uint8List bytes,
    required String fileName,
  }) {
    emit(
      state.copyWith(
        photoBytes: bytes,
        photoFileName: fileName,
        removeExistingPhoto: false,
        error: null,
      ),
    );
  }

  void clearPhoto() {
    if (state.photoBytes != null) {
      emit(
        state.copyWith(
          photoBytes: null,
          photoFileName: null,
        ),
      );
      return;
    }
    if (state.existingImageUrl != null) {
      emit(
        state.copyWith(
          removeExistingPhoto: true,
        ),
      );
    }
  }

  Future<void> submit() async {
    if (state.status.isLoading) {
      return;
    }
    final String trimmedName = state.customName.trim();
    if (trimmedName.isEmpty) {
      emit(
        state.copyWith(
          validationMessage: 'empty_name',
        ),
      );
      return;
    }
    if (trimmedName.length > 255) {
      emit(
        state.copyWith(
          validationMessage: 'name_too_long',
        ),
      );
      return;
    }
    if (state.plantId != null) {
      await _submitEdit(trimmedName);
      return;
    }
    await _submitCreate(trimmedName);
  }

  Future<void> _submitCreate(String trimmedName) async {
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        validationMessage: null,
      ),
    );
    try {
      final CreateGardenPlantResult result = await _repository.createGardenPlant(
        params: CreateGardenPlantParams(
          speciesId: state.speciesId,
          customName: trimmedName,
          roomId: state.roomId,
          photoBytes: state.photoBytes,
          photoFileName: state.photoFileName,
        ),
      );
      emit(
        state.copyWith(
          status: Status.success,
          createdPlant: result.plant,
          imageUploadFailed: result.imageUploadFailed,
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

  Future<void> _submitEdit(String trimmedName) async {
    final GardenPlantModel? currentPlant = state.editingPlant;
    if (currentPlant == null) {
      return;
    }
    emit(
      state.copyWith(
        status: Status.loading,
        error: null,
        validationMessage: null,
      ),
    );
    try {
      GardenPlantModel plant = await _repository.updateGardenPlant(
        params: UpdateGardenPlantParams(
          plantId: currentPlant.id,
          customName: trimmedName,
          roomId: currentPlant.roomId,
          sunlightExposure: currentPlant.sunlightExposure,
          plantSize: currentPlant.plantSize,
          potSizeMm: currentPlant.potSizeMm,
          lastWatering: currentPlant.lastWatering,
          lastWateringExactDate: currentPlant.lastWateringExactDate,
          lastRepotting: currentPlant.lastRepotting,
          lastRepottingExactDate: currentPlant.lastRepottingExactDate,
        ),
      );
      bool imageUploadFailed = false;
      final Uint8List? photoBytes = state.photoBytes;
      final String? photoFileName = state.photoFileName;
      if (photoBytes != null && photoFileName != null) {
        try {
          plant = await _repository.uploadGardenPlantImage(
            plantId: plant.id,
            bytes: photoBytes,
            fileName: photoFileName,
          );
        } catch (_) {
          imageUploadFailed = true;
        }
      } else if (state.removeExistingPhoto && currentPlant.imageUrl != null) {
        await _repository.deleteGardenPlantImage(plantId: plant.id);
        plant = await _repository.getGardenPlant(plantId: plant.id);
      }
      emit(
        state.copyWith(
          status: Status.success,
          editingPlant: plant,
          customName: plant.customName,
          existingImageUrl: plant.imageUrl,
          photoBytes: null,
          photoFileName: null,
          removeExistingPhoto: false,
          imageUploadFailed: imageUploadFailed,
          wasUpdated: true,
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
}
