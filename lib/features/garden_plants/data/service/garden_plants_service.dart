import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';

part 'garden_plants_service.g.dart';

@RestApi()
abstract class GardenPlantsService {
  factory GardenPlantsService(Dio dio) = _GardenPlantsService;

  @POST('/api/garden/plants')
  Future<GardenPlantModel> createGardenPlant({
    @Body() required Map<String, dynamic> body,
  });

  @GET('/api/garden/plants')
  Future<List<GardenPlantModel>> getGardenPlants();

  @GET('/api/garden/plants/{plant_id}')
  Future<GardenPlantModel> getGardenPlant({
    @Path('plant_id') required int plantId,
  });

  @PATCH('/api/garden/plants/{plant_id}')
  Future<GardenPlantModel> updateGardenPlant({
    @Path('plant_id') required int plantId,
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('/api/garden/plants/{plant_id}')
  Future<void> deleteGardenPlant({@Path('plant_id') required int plantId});

  // retrofit_generator не поддерживает одиночный MultipartFile-парт,
  // поэтому файл передаётся списком из одного элемента.
  @POST('/api/garden/plants/{plant_id}/image')
  @MultiPart()
  Future<GardenPlantModel> uploadGardenPlantImage({
    @Path('plant_id') required int plantId,
    @Part(name: 'image') required List<MultipartFile> image,
  });

  @DELETE('/api/garden/plants/{plant_id}/image')
  Future<void> deleteGardenPlantImage({@Path('plant_id') required int plantId});
}
