import 'package:zeleno_v2/features/plant_filters/domain/models/plant_filter_item.dart';
import 'package:zeleno_v2/features/plant_filters/domain/repository/i_plant_filters_repository.dart';

final class PlantFiltersUsecase {
  PlantFiltersUsecase({
    required IPlantFiltersRepository plantFiltersRepository,
  }) : _plantFiltersRepository = plantFiltersRepository;

  final IPlantFiltersRepository _plantFiltersRepository;

  Future<List<PlantFilterItem>> loadSoilPhChoices() {
    return _plantFiltersRepository.getPlantSoilPh();
  }

  Future<List<PlantFilterItem>> loadSoilMoistureChoices() {
    return _plantFiltersRepository.getPlantSoilMoisture();
  }
}
