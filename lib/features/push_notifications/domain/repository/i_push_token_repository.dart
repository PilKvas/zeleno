/// Привязка «пользователь → FCM-токен» на бэкенде.
///
/// Оба вызова — авторизованные: PUT/DELETE `/api/users/current/fcm-token`
/// определяют пользователя по access-токену, поэтому регистрация возможна
/// только после логина, а удаление — до очистки токенов при логауте.
abstract interface class IPushTokenRepository {
  /// Идемпотентная запись токена (upsert): безопасно вызывать повторно.
  Future<void> registerToken({required String token});

  /// Разрывает привязку. Вызывать ДО очистки auth-токенов.
  Future<void> unregisterToken();
}
