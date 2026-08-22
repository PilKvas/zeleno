import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';
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
    required int pageSize,
    required PlantSearchFilters filters,
  }) async {
    final response = await _plantSearchService.getPlants(
      page: page,
      pageSize: pageSize,
      name: filters.searchQuery,
      soilMoisture: _orNull(filters.soilMoisture),
      soilPh: _orNull(filters.soilPh),
      heightMin: filters.activeHeightFrom,
      heightMax: filters.activeHeightTo,
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

//
  List<String>? _orNull(List<String> values) => values.isEmpty ? null : values;
}
