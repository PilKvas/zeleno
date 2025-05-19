import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zeleno_v2/features/rooms/domain/models/room_model.dart';

part 'room_service.g.dart';

@RestApi()
abstract class RoomService {
  factory RoomService(Dio dio) = _RoomService;

  @POST('/api/space/room')
  Future<void> createRoom({
    @Body() required RoomModel roomModel,
  });

  @GET('/api/space/rooms')
  Future<List<RoomModel>> getRoomsList();

  @GET('/api/space/room/{uid}')
  Future<RoomModel> getRoomByUid({
    @Path('uid') required String uid,
  });

  @PUT('/api/space/room/{uid}')
  Future<void> updateRoom({
    @Path('uid') required String uid,
    @Body() required RoomModel roomModel,
  });

  @DELETE('/api/space/room/{uid}')
  Future<void> deleteRoom({
    @Path('uid') required String uid,
  });
}
