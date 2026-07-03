import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/export.dart';

class PlantsSearchUsecase {
  final IPlantSearchRepository _iPlantRepository;

  PlantsSearchUsecase({required IPlantSearchRepository iPlantRepository})
      : _iPlantRepository = iPlantRepository;

  Future<List<PlantSearchItem>> loadPlants({
    required int page,
    String? name,
    int? pageSize,
    String? soilMoisture,
    String? soilPh,
  }) async {
    final response = await _iPlantRepository.getPlants(
      page: page,
      name: name,
      pageSize: pageSize,
      soilMoisture: soilMoisture,
      soilPh: soilPh,
    );

    return response.items;
  }
}
