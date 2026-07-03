import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/plant_filters/data/dto/export.dart';

part 'plant_filters_service.g.dart';

@RestApi()
abstract class PlantFiltersService {
  factory PlantFiltersService(Dio dio) = _PlantFiltersService;

  @GET('/api/species/choices/soil-ph/')
  Future<List<PlantFilterItemDto>> getPlantsSoilPh();

  @GET('/api/species/choices/soil-moisture/')
  Future<List<PlantFilterItemDto>> getPlantsSoilMoisture();
}
