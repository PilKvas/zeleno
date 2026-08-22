import 'package:zeleno_v2/features/push_notifications/data/service/export.dart';
import 'package:zeleno_v2/features/push_notifications/domain/repository/export.dart';

final class PushTokenRepository implements IPushTokenRepository {
  PushTokenRepository({required PushTokenService pushTokenService})
    : _pushTokenService = pushTokenService;

  final PushTokenService _pushTokenService;

  @override
  Future<void> registerToken({required String token}) {
    return _pushTokenService.registerFcmToken(<String, dynamic>{
      'token': token,
    });
  }

  @override
  Future<void> unregisterToken() {
    return _pushTokenService.deleteFcmToken();
  }
}
