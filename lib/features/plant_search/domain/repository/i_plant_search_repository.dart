import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';

abstract class IPlantSearchRepository {
  Future<PaginationWrapper<PlantSearchItem>> getPlants({
    required int page,
    String? name,
    int? pageSize,
    String? soilMoisture,
    String? soilPh,
  });
}
