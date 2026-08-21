import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'push_token_service.g.dart';

@RestApi()
abstract class PushTokenService {
  factory PushTokenService(Dio dio) = _PushTokenService;

  @PUT('/api/users/current/fcm-token')
  Future<void> registerFcmToken(@Body() Map<String, dynamic> body);

  @DELETE('/api/users/current/fcm-token')
  Future<void> deleteFcmToken();
}
