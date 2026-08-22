import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/i_first_run_storage.dart';
import 'package:zeleno_v2/features/splash/presentation/bloc/splash_bloc.dart';

class MockFirstRunStorage extends Mock implements IFirstRunStorage {}

void main() {
  late MockFirstRunStorage mockFirstRunStorage;

  setUp(() {
    mockFirstRunStorage = MockFirstRunStorage();
  });

  group('SplashBloc', () {
    blocTest<SplashBloc, SplashState>(
      'emits [firstTimeInApp] when app is launched for the first time',
      setUp: () {
        when(() => mockFirstRunStorage.getIsFirstRun()).thenReturn(true);
        when(
          () => mockFirstRunStorage.setIsFirstRun(value: false),
        ).thenAnswer((_) async {});
      },
      build: () => SplashBloc(firstRunStorage: mockFirstRunStorage),
      act: (bloc) => bloc.add(const SplashEvent.startApp()),
      expect: () => [const SplashState.firstTimeInApp()],
      verify: (_) {
        verify(() => mockFirstRunStorage.getIsFirstRun()).called(1);
        verify(() => mockFirstRunStorage.setIsFirstRun(value: false)).called(1);
      },
    );

    blocTest<SplashBloc, SplashState>(
      'emits [readyToHome] when app was already launched before',
      setUp: () {
        when(() => mockFirstRunStorage.getIsFirstRun()).thenReturn(false);
      },
      build: () => SplashBloc(firstRunStorage: mockFirstRunStorage),
      act: (bloc) => bloc.add(const SplashEvent.startApp()),
      expect: () => [const SplashState.readyToHome()],
      verify: (_) {
        verify(() => mockFirstRunStorage.getIsFirstRun()).called(1);
        verifyNever(
          () => mockFirstRunStorage.setIsFirstRun(value: any(named: 'value')),
        );
      },
    );
  });
}
