import 'package:zeleno_v2/features/plant_search/domain/models/plant_search_item.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/i_plant_search_repository.dart';

class PlantsSearchUsecase {
  final IPlantSearchRepository _iPlantRepository;

  PlantsSearchUsecase({required IPlantSearchRepository iPlantRepository})
      : _iPlantRepository = iPlantRepository;

  Future<List<PlantSearchItem>> loadPlants({
    required int page,
    String? name,
  }) async {
    final response = await _iPlantRepository.getPlants(
      page: page,
      name: name,
    );

    return response.items
        .where((element) => element.mainCommonName != null)
        .toList();
  }
}
