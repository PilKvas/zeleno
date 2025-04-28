import 'package:zeleno_v2/features/plant_search/data/service/plant_search_service.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/pagination_wrapper.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/plant_search_item.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/i_plant_search_repository.dart';

class PlantSearchRepository implements IPlantSearchRepository {
  final PlantSearchService _plantSearchService;

  PlantSearchRepository({
    required PlantSearchService plantSearchService,
  }) : _plantSearchService = plantSearchService;

  @override
  Future<PaginationWrapper<PlantSearchItem>> getPlants({
    required int page,
    String? name,
  }) async {
    final response = await _plantSearchService.getPlants(
      page: page,
      name: name,
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
