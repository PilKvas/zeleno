import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/core/enums/status.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';
import 'package:zeleno_v2/features/plant_details/domain/reposiotory/i_plant_details_repository.dart';

part 'plant_details_cubit.freezed.dart';
part 'plant_details_state.dart';

class PlantDetailsCubit extends Cubit<PlantDetailsState> {
  final IPlantDetailsRepository _plantDetailsRepository;

  PlantDetailsCubit({required IPlantDetailsRepository plantDetailsRepository})
      : _plantDetailsRepository = plantDetailsRepository,
        super(const PlantDetailsState(
          status: Status.loading,
        ));

  void getPlant(String slug) async {
    emit(state.copyWith(status: Status.loading));

    final response = await _plantDetailsRepository.getPlant(slug);

    emit(state.copyWith(status: Status.success, plantDetails: response));
  }
}
