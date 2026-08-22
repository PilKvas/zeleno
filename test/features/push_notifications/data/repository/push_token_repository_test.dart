import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/push_notifications/data/repository/push_token_repository.dart';
import 'package:zeleno_v2/features/push_notifications/data/service/push_token_service.dart';

class MockPushTokenService extends Mock implements PushTokenService {}

void main() {
  late MockPushTokenService mockService;
  late PushTokenRepository repository;

  setUp(() {
    mockService = MockPushTokenService();
    repository = PushTokenRepository(pushTokenService: mockService);
  });

  test(
    'registerToken sends body with token key from the API contract',
    () async {
      when(() => mockService.registerFcmToken(any())).thenAnswer((_) async {});

      await repository.registerToken(token: 'fcm-device-token-abc123');

      verify(
        () => mockService.registerFcmToken(<String, dynamic>{
          'token': 'fcm-device-token-abc123',
        }),
      ).called(1);
    },
  );

  test('unregisterToken calls DELETE endpoint', () async {
    when(() => mockService.deleteFcmToken()).thenAnswer((_) async {});

    await repository.unregisterToken();

    verify(() => mockService.deleteFcmToken()).called(1);
  });
}
