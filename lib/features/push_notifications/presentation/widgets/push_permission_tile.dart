import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeleno_v2/app/di/export.dart';
import 'package:zeleno_v2/features/push_notifications/application/export.dart';
import 'package:zeleno_v2/features/push_notifications/domain/model/export.dart';
import 'package:zeleno_v2/features/push_notifications/presentation/cubit/export.dart';
import 'package:zeleno_v2/uikit/export.dart';

/// Тумблер уведомлений в профиле.
///
/// Отражает исключительно системное разрешение — собственного флага
/// «хочу уведомления» у приложения нет. Поэтому выключить уведомления
/// прямо здесь нельзя: тап уводит в настройки ОС, а вернувшись, виджет
/// перечитывает статус (см. [didChangeAppLifecycleState]).
class PushPermissionTile extends StatefulWidget {
  const PushPermissionTile({super.key});

  @override
  State<PushPermissionTile> createState() => _PushPermissionTileState();
}

class _PushPermissionTileState extends State<PushPermissionTile>
    with WidgetsBindingObserver {
  late final PushPermissionCubit _cubit = PushPermissionCubit(
    pushTokenManager: injection<PushTokenManager>(),
  )..refresh();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // Разрешение могли поменять в системных настройках, пока нас не было.
    if (state == AppLifecycleState.resumed) {
      _cubit.refresh();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return BlocBuilder<PushPermissionCubit, PushPermissionStatus?>(
      bloc: _cubit,
      builder: (BuildContext context, PushPermissionStatus? status) {
        final bool isGranted = status?.isGranted ?? false;
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: ZDimensions.normalMargin,
            vertical: ZDimensions.smallMargin,
          ),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(ZDimensions.normalMargin),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Уведомления',
                      style: typography.body.copyWith(
                        color: colorScheme.onBackground,
                      ),
                    ),
                    if (status != null && !isGranted) ...<Widget>[
                      const SizedBox(height: 2),
                      Text(
                        status.isNotDetermined
                            ? 'Напомним, когда растение пора полить'
                            : 'Включить можно в настройках устройства',
                        style: typography.caption.copyWith(
                          color: colorScheme.secondaryText,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: ZDimensions.smallMargin),
              Switch.adaptive(
                value: isGranted,
                activeThumbColor: colorScheme.brand,
                // Значение меняет ОС, а не свитч: сюда приходит только намерение.
                onChanged: status == null ? null : (_) => _cubit.toggle(),
              ),
            ],
          ),
        );
      },
    );
  }
}
