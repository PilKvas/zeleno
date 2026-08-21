import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/push_notifications/application/push_token_manager.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

class MockPushTokenManager extends Mock implements PushTokenManager {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late MockPushTokenManager mockPushTokenManager;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockPushTokenManager = MockPushTokenManager();
    when(() => mockAuthRepository.statusStream)
        .thenAnswer((_) => const Stream<AuthStatus>.empty());
  });

  test(
      'signOut unregisters fcm token BEFORE clearing auth tokens — '
      'DELETE is an authorized request', () async {
    when(() => mockPushTokenManager.unregisterToken())
        .thenAnswer((_) async {});
    when(() => mockAuthRepository.signOut()).thenAnswer((_) async {});

    final AuthCubit cubit = AuthCubit(
      authRepository: mockAuthRepository,
      pushTokenManager: mockPushTokenManager,
    );

    await cubit.signOut();

    verifyInOrder(<dynamic Function()>[
      () => mockPushTokenManager.unregisterToken(),
      () => mockAuthRepository.signOut(),
    ]);
    await cubit.close();
  });
}
