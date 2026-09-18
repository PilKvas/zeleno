import 'package:flutter/animation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zeleno_v2/core/animation/timeline_events.dart';

void main() {
  late AnimationController controller;
  late List<String> fired;

  setUp(() {
    controller = AnimationController(
      vsync: const TestVSync(),
      duration: const Duration(seconds: 1),
    );
    fired = <String>[];
    addTimelineEvents(controller, 60, [
      TimelineEvent(10, () => fired.add('a')),
      TimelineEvent(30, () => fired.add('b')),
      TimelineEvent(30, () => fired.add('c')),
    ]);
  });

  tearDown(() => controller.dispose());

  test('fires each event once when playback passes its frame', () {
    controller.value = 9 / 60;
    expect(fired, isEmpty);

    controller.value = 10 / 60;
    expect(fired, ['a']);

    controller.value = 59 / 60;
    expect(fired, ['a', 'b', 'c']);
  });

  test('does not fire when moving backwards or resetting', () {
    controller.value = 1;
    fired.clear();

    controller.value = 0.5;
    controller.value = 0;
    expect(fired, isEmpty);

    // После сброса события снова доступны при движении вперёд.
    controller.value = 20 / 60;
    expect(fired, ['a']);
  });
}
