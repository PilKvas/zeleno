import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/export.dart';

class PlantsSearchUsecase {
  final IPlantSearchRepository _iPlantRepository;

  PlantsSearchUsecase({required IPlantSearchRepository iPlantRepository})
    : _iPlantRepository = iPlantRepository;

  Future<List<PlantSearchItem>> loadPlants({
    required int page,
    required int pageSize,
    required PlantSearchFilters filters,
  }) async {
    final response = await _iPlantRepository.getPlants(
      page: page,
      pageSize: pageSize,
      filters: filters,
    );

    return response.items;
  }
}
