import 'package:flutter/material.dart';

/// Пара таймлайнов «интро → idle-луп», как state machine в Rive:
/// [intro] проигрывается один раз, по его завершении зацикливается [idle].
/// При включённом «Уменьшить движение» сразу показывается конец интро.
mixin IntroIdleAnimation<T extends StatefulWidget>
    on State<T>, TickerProviderStateMixin<T> {
  int get introFrames;
  int get idleFrames;

  late final AnimationController intro = AnimationController(
    vsync: this,
    duration: framesDuration(introFrames),
  );
  late final AnimationController idle = AnimationController(
    vsync: this,
    duration: framesDuration(idleFrames),
  );
  late final Listenable animation = Listenable.merge([intro, idle]);

  bool _started = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) return;
    _started = true;
    if (MediaQuery.disableAnimationsOf(context)) {
      intro.value = 1;
    } else {
      intro.forward().whenComplete(idle.repeat);
    }
  }

  @override
  void dispose() {
    intro.dispose();
    idle.dispose();
    super.dispose();
  }
}

/// Длительность [frames] кадров при 60 fps таймлайна Rive.
Duration framesDuration(int frames) =>
    Duration(milliseconds: frames * 1000 ~/ 60);
