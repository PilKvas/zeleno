import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/rooms/domain/models/garden_model.dart';
import 'package:zeleno_v2/features/rooms/domain/models/garden_plants_response.dart';

part 'garden_service.g.dart';

@RestApi()
abstract class GardenService {
  factory GardenService(Dio dio) = _GardenService;

  @POST('/api/garden/plant')
  Future<void> createGardenPlant({
    @Body() required GardenModel gardenModel,
  });

  @GET('/api/garden/plants')
  Future<List<GardenPlantsResponse>> getGardenPlantsList({
    @Query('roomId') int? roomId,
  });

  @DELETE('/api/garden/plant/{uid}')
  Future<void> deletePlanFromGarden({
    @Path('uid') required String uid,
  });
}
