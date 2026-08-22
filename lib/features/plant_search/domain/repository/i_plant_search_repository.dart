import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';

abstract class IPlantSearchRepository {
  Future<PaginationWrapper<PlantSearchItem>> getPlants({
    required int page,
    required int pageSize,
    required PlantSearchFilters filters,
  });
}
