import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/plant_search/data/dto/export.dart';

part 'plant_search_service.g.dart';

@RestApi()
abstract class PlantSearchService {
  factory PlantSearchService(Dio dio) = _PlantSearchService;

  @GET('/api/species/')
  Future<PaginationWrapperDto<PlantSearchItemDto>> getPlants({
    @Query('page') required int page,
    @Query('page_size') int? pageSize,
    @Query('search') String? name,
    @Query('soil_moisture') List<String>? soilMoisture,
    @Query('soil_ph') List<String>? soilPh,
    @Query('height_min') int? heightMin,
    @Query('height_max') int? heightMax,
  });
}
