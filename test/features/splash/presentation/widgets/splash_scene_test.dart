import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zeleno_v2/features/splash/presentation/widgets/splash_scene.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/dimensions.dart';
import 'package:zeleno_v2/uikit/theme/theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

void main() {
  final ThemeData theme = ZTheme(
    colorScheme: const ZColorScheme.light(),
    typography: ZTypography.based(),
    dimensions: const ZDimensions(),
  ).createThemeData();

  late List<String> haptics;

  setUp(() {
    haptics = <String>[];
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, (call) async {
          if (call.method == 'HapticFeedback.vibrate') {
            haptics.add(call.arguments as String);
          }
          return null;
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, null);
  });

  Future<void> pumpScene(
    WidgetTester tester, {
    VoidCallback? onIntroComplete,
    bool disableAnimations = false,
  }) {
    return tester.pumpWidget(
      MaterialApp(
        theme: theme,
        home: MediaQuery(
          data: MediaQueryData(disableAnimations: disableAnimations),
          child: Scaffold(body: SplashScene(onIntroComplete: onIntroComplete)),
        ),
      ),
    );
  }

  testWidgets('vibrates at key frames and completes intro after 2 seconds', (
    WidgetTester tester,
  ) async {
    var completed = false;
    await pumpScene(tester, onIntroComplete: () => completed = true);

    // Кадр 30 — удар капли.
    await tester.pump(const Duration(milliseconds: 520));
    expect(haptics, ['HapticFeedbackType.mediumImpact']);

    // Кадры 50 и 56 — листья, 66 — wordmark.
    await tester.pump(const Duration(milliseconds: 600));
    expect(haptics, [
      'HapticFeedbackType.mediumImpact',
      'HapticFeedbackType.lightImpact',
      'HapticFeedbackType.lightImpact',
      'HapticFeedbackType.selectionClick',
    ]);
    expect(completed, isFalse);

    await tester.pump(const Duration(milliseconds: 900));
    expect(completed, isTrue);
    expect(haptics, hasLength(4));
  });

  testWidgets('with reduced motion completes at once without haptics', (
    WidgetTester tester,
  ) async {
    var completed = false;
    await pumpScene(
      tester,
      onIntroComplete: () => completed = true,
      disableAnimations: true,
    );

    expect(completed, isTrue);
    expect(haptics, isEmpty);
  });
}
