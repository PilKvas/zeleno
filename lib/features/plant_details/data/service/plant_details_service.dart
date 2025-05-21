import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';

part 'plant_details_service.g.dart';

@RestApi()
abstract class PlantDetailsService {
  factory PlantDetailsService(Dio dio) = _PlantDetailsService;

  @GET('/api/search/species/{slug}')
  Future<PlantDetailsModel> getPlant({
    @Path('slug') required String slug,
  });
}
