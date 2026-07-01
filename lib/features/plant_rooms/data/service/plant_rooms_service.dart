import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/plant_rooms/data/dto/plant_room_dto.dart';

part 'plant_rooms_service.g.dart';

@RestApi()
abstract class PlantRoomsService {
  factory PlantRoomsService(Dio dio) = _PlantRoomsService;

  @GET('/api/garden/rooms')
  Future<List<PlantRoomDto>> getGardenRooms();

  @GET('/api/garden/rooms/{room_id}')
  Future<PlantRoomDto> getGardenRoom({
    @Path('room_id') required int roomId,
  });

  @POST('/api/garden/rooms')
  Future<void> createGardenRoom({
    @Body() required Map<String, dynamic> body,
  });

  @PATCH('/api/garden/rooms/{room_id}')
  Future<void> updateGardenRoom({
    @Path('room_id') required int roomId,
    @Body() required Map<String, dynamic> body,
  });

  @DELETE('/api/garden/rooms/{room_id}')
  Future<void> deleteGardenRoom({
    @Path('room_id') required int roomId,
  });
}
