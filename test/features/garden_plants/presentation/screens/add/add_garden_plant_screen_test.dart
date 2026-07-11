import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zeleno_v2/app/di/di.dart';
import 'package:zeleno_v2/features/garden_plants/domain/entities/create_garden_plant_params.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/i_garden_plants_repository.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/add/add_garden_plant_screen.dart';
import 'package:zeleno_v2/l10n/gen/app_localizations.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/dimensions.dart';
import 'package:zeleno_v2/uikit/theme/theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class MockGardenPlantsRepository extends Mock
    implements IGardenPlantsRepository {}

void main() {
  late MockGardenPlantsRepository mockRepository;

  final ThemeData theme = ZTheme(
    colorScheme: const ZColorScheme.light(),
    typography: ZTypography.based(),
    dimensions: const ZDimensions(),
  ).createThemeData();

  setUpAll(() {
    registerFallbackValue(
      const CreateGardenPlantParams(
        speciesId: 0,
        customName: '',
        roomId: 0,
      ),
    );
  });

  setUp(() {
    mockRepository = MockGardenPlantsRepository();
    if (injection.isRegistered<IGardenPlantsRepository>()) {
      injection.unregister<IGardenPlantsRepository>();
    }
    injection.registerFactory<IGardenPlantsRepository>(() => mockRepository);
  });

  tearDown(() {
    if (injection.isRegistered<IGardenPlantsRepository>()) {
      injection.unregister<IGardenPlantsRepository>();
    }
  });

  Future<void> pumpScreen(WidgetTester tester) {
    return tester.pumpWidget(
      MaterialApp(
        theme: theme,
        locale: const Locale('ru'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const AddGardenPlantScreen(
          speciesId: 42,
          roomId: 3,
          defaultPlantName: '',
        ),
      ),
    );
  }

  testWidgets('shows validation message and skips API when name is empty',
      (WidgetTester tester) async {
    await pumpScreen(tester);

    await tester.tap(find.text('Дальше'));
    await tester.pump();

    expect(find.text('Укажите имя растения'), findsOneWidget);
    verifyNever(
      () => mockRepository.createGardenPlant(params: any(named: 'params')),
    );
  });

  testWidgets('submits the entered name to the repository',
      (WidgetTester tester) async {
    when(
      () => mockRepository.createGardenPlant(params: any(named: 'params')),
    ).thenThrow(Exception('network'));

    await pumpScreen(tester);

    await tester.enterText(find.byType(TextField), 'Тестовый фикус');
    await tester.tap(find.text('Дальше'));
    await tester.pump();

    final CreateGardenPlantParams params = verify(
      () => mockRepository.createGardenPlant(
        params: captureAny(named: 'params'),
      ),
    ).captured.single as CreateGardenPlantParams;

    expect(params.customName, 'Тестовый фикус');
    expect(params.speciesId, 42);
    expect(params.roomId, 3);
    // Имя не теряется — можно повторить сохранение (FR-010).
    expect(find.text('Тестовый фикус'), findsOneWidget);
    expect(find.text('Укажите имя растения'), findsNothing);
  });

  testWidgets('does not create a plant instance until submit is confirmed',
      (WidgetTester tester) async {
    await pumpScreen(tester);

    await tester.enterText(find.byType(TextField), 'Черновик');
    await tester.pump();

    verifyNever(
      () => mockRepository.createGardenPlant(params: any(named: 'params')),
    );
  });
}
