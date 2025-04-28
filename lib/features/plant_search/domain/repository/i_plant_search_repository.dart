import 'package:zeleno_v2/features/plant_search/domain/models/pagination_wrapper.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/plant_search_item.dart';

abstract class IPlantSearchRepository {
  Future<PaginationWrapper<PlantSearchItem>> getPlants({
    required int page,
    String? name,
  });
}
