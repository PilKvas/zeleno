import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';
import 'package:zeleno_v2/features/push_notifications/domain/model/export.dart';
import 'package:zeleno_v2/features/push_notifications/domain/repository/export.dart';

/// Держит привязку «пользователь → FCM-токен» на бэкенде в актуальном
/// состоянии на протяжении жизни приложения.
///
/// Все сетевые операции — best effort: пуши вспомогательная функция,
/// их сбои не должны ломать логин/логаут. Упавший PUT самовосстановится
/// при следующем синке (PUT идемпотентен, повторная запись безопасна).
class PushTokenManager {
  PushTokenManager({
    required IPushTokenRepository pushTokenRepository,
    required IAuthRepository authRepository,
  }) : _pushTokenRepository = pushTokenRepository,
       _authRepository = authRepository;

  final IPushTokenRepository _pushTokenRepository;
  final IAuthRepository _authRepository;

  StreamSubscription<AuthStatus>? _authSubscription;
  StreamSubscription<String>? _tokenRefreshSubscription;

  /// Firebase не сконфигурирован (firebase_options — заглушка) —
  /// менеджер молча выключен, приложение работает без пушей.
  bool get _isFirebaseAvailable => Firebase.apps.isNotEmpty;

  Future<void> init() async {
    if (!_isFirebaseAvailable) {
      return;
    }
    // Разрешение здесь НЕ запрашиваем: системный диалог одноразовый,
    // и показываем мы его в момент очевидной ценности — после добавления
    // первого растения (см. requestPermissionAndSync).

    // statusStream отдаёт текущий статус первым событием, поэтому одна
    // подписка покрывает и «запуск уже залогиненным», и свежий логин.
    _authSubscription = _authRepository.statusStream.listen((
      AuthStatus status,
    ) {
      if (status == AuthStatus.authenticated) {
        unawaited(syncToken());
      }
    });

    // FCM может перевыпустить токен в любой момент без участия
    // пользователя — без этой подписки бэкенд останется с мёртвым
    // адресом до следующего логина.
    _tokenRefreshSubscription = FirebaseMessaging.instance.onTokenRefresh
        .listen((String token) async {
          if (await _authRepository.hasValidTokens()) {
            await _registerToken(token);
          }
        }, onError: (Object error) => _log('onTokenRefresh failed: $error'));
  }

  /// Текущее состояние системного разрешения. Спрашиваем ОС каждый раз:
  /// пользователь мог отозвать разрешение в системных настройках, пока
  /// приложение висело в фоне, и закешированное значение соврёт.
  Future<PushPermissionStatus> permissionStatus() async {
    if (!_isFirebaseAvailable) {
      return PushPermissionStatus.denied;
    }
    try {
      final NotificationSettings settings = await FirebaseMessaging.instance
          .getNotificationSettings();
      return _mapAuthorizationStatus(settings.authorizationStatus);
    } catch (error) {
      _log('getNotificationSettings failed: $error');
      return PushPermissionStatus.denied;
    }
  }

  /// Показывает системный диалог разрешения — но только если его ещё не
  /// показывали. Диалог одноразовый за жизнь установки: после отказа
  /// повторный вызов молча вернёт denied, а вернуть разрешение можно лишь
  /// через настройки ОС ([openSystemSettings]).
  ///
  /// Вызывается в точках, где ценность уведомлений очевидна: после
  /// добавления растения и при заходе в непустой сад.
  ///
  /// Возвращает статус после запроса.
  Future<PushPermissionStatus> requestPermissionAndSync() async {
    if (!_isFirebaseAvailable) {
      return PushPermissionStatus.denied;
    }
    PushPermissionStatus status = await permissionStatus();
    if (status.isNotDetermined) {
      try {
        final NotificationSettings settings = await FirebaseMessaging.instance
            .requestPermission();
        status = _mapAuthorizationStatus(settings.authorizationStatus);
      } catch (error) {
        _log('requestPermission failed: $error');
      }
    }
    if (status.isGranted) {
      await syncToken();
    }
    return status;
  }

  /// Открывает системные настройки уведомлений приложения — единственный
  /// путь назад после отказа.
  Future<void> openSystemSettings() async {
    try {
      await AppSettings.openAppSettings(type: AppSettingsType.notification);
    } catch (error) {
      _log('openAppSettings failed: $error');
    }
  }

  PushPermissionStatus _mapAuthorizationStatus(AuthorizationStatus status) {
    switch (status) {
      // provisional — тихие уведомления на iOS: канал открыт, токен нужен.
      case AuthorizationStatus.authorized:
      case AuthorizationStatus.provisional:
        return PushPermissionStatus.granted;
      case AuthorizationStatus.notDetermined:
        return PushPermissionStatus.notDetermined;
      case AuthorizationStatus.denied:
        return PushPermissionStatus.denied;
    }
  }

  /// Запрашивает актуальный токен у FCM и относит его на бэкенд.
  Future<void> syncToken() async {
    if (!_isFirebaseAvailable) {
      return;
    }
    try {
      final String? token = await FirebaseMessaging.instance.getToken();
      if (token == null) {
        _log('getToken вернул null (нет разрешения или Google-сервисов)');
        return;
      }
      await _registerToken(token);
    } catch (error) {
      _log('syncToken failed: $error');
    }
  }

  /// Разрывает привязку на бэкенде. Вызывать ДО очистки auth-токенов:
  /// DELETE — авторизованный запрос, после очистки получит 401.
  Future<void> unregisterToken() async {
    if (!_isFirebaseAvailable) {
      return;
    }
    try {
      await _pushTokenRepository.unregisterToken();
    } catch (error) {
      // Best effort: мёртвый токен бэкенд подчистит сам по UNREGISTERED
      // при первой отправке; блокировать логаут из-за этого нельзя.
      _log('unregisterToken failed: $error');
    }
  }

  Future<void> _registerToken(String token) async {
    try {
      await _pushTokenRepository.registerToken(token: token);
    } catch (error) {
      _log('registerToken failed: $error');
    }
  }

  void _log(String message) {
    if (kDebugMode) {
      debugPrint('[PushTokenManager] $message');
    }
  }

  void dispose() {
    _authSubscription?.cancel();
    _tokenRefreshSubscription?.cancel();
  }
}
