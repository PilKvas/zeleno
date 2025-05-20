import 'package:zeleno_v2/features/plant_details/data/service/plant_details_service.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';
import 'package:zeleno_v2/features/plant_details/domain/reposiotory/i_plant_details_repository.dart';

class PlantDetailsRepository implements IPlantDetailsRepository {
  final PlantDetailsService _plantDetailsService;

  PlantDetailsRepository({
    required PlantDetailsService plantDetailsService,
  }) : _plantDetailsService = plantDetailsService;

  @override
  Future<PlantDetailsModel> getPlant(String slug) async {
    final response = await _plantDetailsService.getPlant(slug: slug);

    return response;
  }
}
