import 'package:flutter/animation.dart';

/// Событие на кадре таймлайна — аналог ключа на кастомном свойстве в Rive
/// (например, `haptic` на холсте `Splash`): [fire] вызывается один раз,
/// когда воспроизведение проходит [frame] вперёд.
class TimelineEvent {
  const TimelineEvent(this.frame, this.fire);

  final int frame;
  final VoidCallback fire;
}

/// Подписывает [events] на [controller] с таймлайном длиной [frames] кадров.
///
/// Срабатывают только при движении вперёд: перемотка назад и сброс
/// `value = 0` ничего не вызывают. Не подписывайте при включённом
/// «Уменьшить движение» — прыжок `value = 1` пройдёт через все кадры разом.
void addTimelineEvents(
  AnimationController controller,
  int frames,
  List<TimelineEvent> events,
) {
  var lastFrame = (controller.value * frames).floor();
  controller.addListener(() {
    final frame = (controller.value * frames).floor();
    if (frame > lastFrame) {
      for (final event in events) {
        if (event.frame > lastFrame && event.frame <= frame) event.fire();
      }
    }
    lastFrame = frame;
  });
}
