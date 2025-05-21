import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get positiveResponse => 'Да';

  @override
  String get bottomMenuFirstItem => 'Мой сад';

  @override
  String get bottomMenuSecondItem => 'Поиск';

  @override
  String get bottomMenuThirdItem => 'Профиль';

  @override
  String get startWithTutorialButtonTitle => 'Выращивать по туториалу';

  @override
  String get toTheGardenButtonTitle => 'В сад';

  @override
  String get plantDetailMenuSpecifications => 'Характеристики';

  @override
  String get plantDetailMenuCare => 'Уход';

  @override
  String get plantDetailMenuGrowth => 'Развитие';

  @override
  String get plantDetailDescription => 'Описание';

  @override
  String get plantDetailScientificClassification => 'Научная классификация';

  @override
  String get tags => 'Теги';

  @override
  String get unknownName => 'Неизвестное имя';

  @override
  String get noTagsAvailable => 'Нет тегов';

  @override
  String get noInfoAboutRegularEvents => 'Нет информации о регулярных событиях';

  @override
  String plantHeightRange(String from, String to) {
    return '$from - $to см';
  }

  @override
  String plantWidthRange(String from, String to) {
    return '$from - $to см';
  }

  @override
  String plantYearsToMaxHeightRange(String from, String to) {
    return '$from-$to лет';
  }

  @override
  String get examplesTitle => 'Примеры';

  @override
  String get examplesLocalizationTitle => 'Примеры локализации';

  @override
  String string(String name) {
    return 'Привет, $name!';
  }

  @override
  String weekDay(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.E(localeName);
    final String dateString = dateDateFormat.format(date);

    return '$dateString';
  }

  @override
  String dateAndTime(DateTime date, DateTime time) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.MMMMd(localeName);
    final String dateString = dateDateFormat.format(date);
    final intl.DateFormat timeDateFormat = intl.DateFormat.jm(localeName);
    final String timeString = timeDateFormat.format(time);

    return '$dateString, $timeString';
  }

  @override
  String inboxCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'У вас $count новых сообщений',
      one: 'У вас 1 новое ообщение',
      zero: 'У вас нет новых сообщений',
    );
    return '$_temp0';
  }

  @override
  String get tempScreenDashNavBarItemLabel => 'Dash экран';

  @override
  String get tempScreenInfoNavBarItemLabel => 'Инфо экран';

  @override
  String get tempScreenDebugNavBarItemLabel => 'Дебаг экран';

  @override
  String get debugScreenTitle => 'Экран отладки';

  @override
  String get debugScreenServerSubtitle => 'Сервер';

  @override
  String get debugScreenServerConnectButton => 'Переключить сервер';

  @override
  String get debugScreenProxySubtitle => 'Прокси';

  @override
  String get debugScreenProxyInfo => 'Активирует передачу через прокси сервер.';

  @override
  String get debugScreenProxyEditTextLabel => 'Введите адресс прокси сервера';

  @override
  String get debugScreenProxyConnectButton => 'Подключить';

  @override
  String get debugScreenThemeSubtitle => 'Тема приложения';

  @override
  String get debugScreenThemeLight => 'Светлая тема';

  @override
  String get debugScreenThemeDark => 'Темная темя';

  @override
  String get debugScreenThemeSystem => 'Системная тема';

  @override
  String get debugScreenUikitNavigateButton => 'Открыть UIKit';

  @override
  String get debugScreenReloadAppMessage => 'Перезагрузите приложение, чтобы увидеть примененные изменения';

  @override
  String get uiKitScreenTitle => 'UI Kit';

  @override
  String get uiKitScreenTextFieldLabel => 'Text Field';

  @override
  String get uiKitScreenCardText => 'Card';

  @override
  String get uiKitScreenText => 'Text';

  @override
  String get uiKitScreenPrimaryButtonText => 'Primary Button';

  @override
  String get uiKitScreenPrimaryButtonSnackText => 'Primary Button Pressed';

  @override
  String get uiKitScreenSecondaryButtonText => 'Secondary Button';

  @override
  String get uiKitScreenSecondaryButtonSnackText => 'Secondary Button Pressed';

  @override
  String get uiKitScreenTertiaryButtonText => 'Tertiary Button';

  @override
  String get uiKitScreenTertiaryButtonSnackText => 'Tertiary Button Pressed';

  @override
  String get uiKitScreenTetradicButtonText => 'Tetradic button';

  @override
  String get uiKitScreenTetradicButtonSnackText => 'Tetradic Button Pressed';

  @override
  String get uiKitScreenDangerSnackButtonText => 'Danger snack';

  @override
  String get uiKitScreenDangerSnackText => 'Danger snack';

  @override
  String get uiKitScreenPositiveSnackButtonText => 'Positive snack';

  @override
  String get uiKitScreenPositiveSnackText => 'Positive snack';

  @override
  String get uiKitScreenColorCardPrimaryName => 'Primary';

  @override
  String get uiKitScreenColorCardSecondaryName => 'Secondary';

  @override
  String get uiKitScreenColorCardSurfaceName => 'Surface';

  @override
  String get uiKitScreenColorCardSurfaceSecondaryName => 'Surface Secondary';

  @override
  String get uiKitScreenColorCardBackgroundName => 'Background';

  @override
  String get uiKitScreenColorCardBackgroundSecondaryName => 'Background Secondary';

  @override
  String get uiKitScreenColorCardBackgroundTertiaryName => 'Background Tertiary';

  @override
  String get uiKitScreenColorCardBackgroundTetradicName => 'Tetradic Background';

  @override
  String get uiKitScreenColorCardDangerName => 'Danger';

  @override
  String get uiKitScreenColorCardDangerSecondaryName => 'Danger Secondary';

  @override
  String get uiKitScreenColorCardTextFieldName => 'Text Field';

  @override
  String get uiKitScreenColorCardTextFieldLabelName => 'Text Field Label';

  @override
  String get uiKitScreenColorCardTextFieldHelperName => 'Text Field Helper';

  @override
  String get uiKitScreenColorCardFrameTextFieldSecondaryName => 'Frame Text Field Secondary';

  @override
  String get uiKitScreenColorCardInactiveName => 'Inactive';

  @override
  String get uiKitScreenColorCardPositiveName => 'Positive';

  @override
  String get uiKitScreenColorCardSkeletonPrimaryName => 'Skeleton Primary';

  @override
  String get uiKitScreenColorCardSkeletonSecondaryName => 'Skeleton Secondary';

  @override
  String get uiKitScreenColorCardSkeletonTertiaryName => 'Skeleton Tertiary';

  @override
  String get featureExampleFailedLoadIpMessage => 'Не удалось загрузить IP-адрес';

  @override
  String get search => 'Поиск';

  @override
  String get title => 'FROM SEED';

  @override
  String get firstPageTitle => 'Энциклопедия в вашем телефоне';

  @override
  String get firstPageSubTitle => 'Более 500 000 видов с детальным описанием.Находите нужное растение за секунды через умный поиск.';

  @override
  String get secondPageTitle => 'Уход за растениями без сложностей';

  @override
  String get secondPageSubTitle => 'Понятные карточки растений с важными параметрами ухода.Точно знайте, когда поливать и пересаживать';

  @override
  String get thirdPageTitle => 'Станьте экспертом по выращиванию';

  @override
  String get thirdPageSubTitle => 'Персонализированные гайды с пошаговыми инструкциями.От семечка до цветущего растения под вашим руководством';

  @override
  String get next => 'Далее';

  @override
  String get start => 'Начать';

  @override
  String get login => 'Войдите в аккаунт';

  @override
  String get register => 'Создайте аккаунт';
}
