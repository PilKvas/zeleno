import 'package:zeleno_v2/features/plant_search/data/service/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/export.dart';

class PlantSearchRepository implements IPlantSearchRepository {
  final PlantSearchService _plantSearchService;

  PlantSearchRepository({
    required PlantSearchService plantSearchService,
  }) : _plantSearchService = plantSearchService;

  @override
  Future<PaginationWrapper<PlantSearchItem>> getPlants({
    required int page,
    String? name,
    int? pageSize,
    String? soilMoisture,
    String? soilPh,
  }) async {
    final response = await _plantSearchService.getPlants(
      page: page,
      name: name,
      pageSize: pageSize,
      soilMoisture: soilMoisture,
      soilPh: soilPh,
    );

    return PaginationWrapper(
      count: response.count,
      items: response.items
          .map(
            (plant) => plant.toModel(dto: plant),
          )
          .toList(),
    );
  }
}
