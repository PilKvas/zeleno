import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/features/push_notifications/application/export.dart';
import 'package:zeleno_v2/features/push_notifications/domain/model/export.dart';

/// Состояние тумблера уведомлений в профиле.
///
/// `null` — статус ещё не прочитан у ОС (первый кадр).
class PushPermissionCubit extends Cubit<PushPermissionStatus?> {
  PushPermissionCubit({required PushTokenManager pushTokenManager})
    : _pushTokenManager = pushTokenManager,
      super(null);

  final PushTokenManager _pushTokenManager;

  Future<void> refresh() async {
    final PushPermissionStatus status = await _pushTokenManager
        .permissionStatus();
    if (!isClosed) {
      emit(status);
    }
  }

  /// Тап по тумблеру.
  ///
  /// Включить разрешение изнутри приложения можно ровно один раз — пока ОС
  /// не показала свой диалог. Дальше (и всегда при выключении) единственный
  /// путь — системные настройки; актуальный статус подхватит [refresh]
  /// при возврате в приложение.
  Future<void> toggle() async {
    final PushPermissionStatus? status = state;
    if (status != null && status.isNotDetermined) {
      final PushPermissionStatus updated = await _pushTokenManager
          .requestPermissionAndSync();
      if (!isClosed) {
        emit(updated);
      }
      return;
    }
    await _pushTokenManager.openSystemSettings();
  }
}
