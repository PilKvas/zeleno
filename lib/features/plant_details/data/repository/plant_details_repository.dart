import 'package:zeleno_v2/features/plant_details/data/service/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/repository/export.dart';

class PlantDetailsRepository implements IPlantDetailsRepository {
  final PlantDetailsService _plantDetailsService;

  PlantDetailsRepository({required PlantDetailsService plantDetailsService})
    : _plantDetailsService = plantDetailsService;

  @override
  Future<PlantDetailsModel> getPlant(String slug) async {
    final response = await _plantDetailsService.getPlant(slug: slug);

    return response;
  }
}
