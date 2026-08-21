import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:zeleno_v2/features/core/widgets/export.dart';
import 'package:zeleno_v2/features/navigation/export.dart';

/// Приём пушей в трёх состояниях приложения:
/// - foreground: ОС уведомление НЕ показывает — рисуем снекбар сами;
/// - background (свёрнуто): показывает ОС, тап ловит onMessageOpenedApp;
/// - terminated (убито): показывает ОС, «запустивший» пуш забираем
///   вручную через getInitialMessage — тап случился до подписки на стрим.
class PushMessageHandler {
  PushMessageHandler({required AppRouter router}) : _router = router;

  final AppRouter _router;

  StreamSubscription<RemoteMessage>? _foregroundSubscription;
  StreamSubscription<RemoteMessage>? _openedAppSubscription;

  Future<void> init() async {
    if (Firebase.apps.isEmpty) {
      return;
    }
    _foregroundSubscription =
        FirebaseMessaging.onMessage.listen(_onForegroundMessage);
    _openedAppSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen(_onMessageTap);

    final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      // Холодный старт по тапу: даём сплэшу завершить переход на HomeRoute,
      // иначе его replaceAll перекроет нашу навигацию.
      await Future<void>.delayed(const Duration(seconds: 1));
      _onMessageTap(initialMessage);
    }
  }

  void _onMessageTap(RemoteMessage message) {
    final int? plantId =
        int.tryParse(message.data['plant_id']?.toString() ?? '');
    if (plantId == null) {
      return;
    }
    _router.navigate(
      HomeRoute(
        children: <PageRouteInfo<dynamic>>[
          GardenStackRoute(
            children: <PageRouteInfo<dynamic>>[
              const GardenPlantsListRoute(),
              GardenPlantDetailRoute(plantId: plantId),
            ],
          ),
        ],
      ),
    );
  }

  void _onForegroundMessage(RemoteMessage message) {
    final String? text =
        message.notification?.title ?? message.notification?.body;
    if (text == null || text.isEmpty) {
      return;
    }
    final BuildContext? context = _router.navigatorKey.currentContext;
    if (context == null) {
      return;
    }
    CustomSnackBar.show(context: context, message: text);
  }

  void dispose() {
    _foregroundSubscription?.cancel();
    _openedAppSubscription?.cancel();
  }
}
