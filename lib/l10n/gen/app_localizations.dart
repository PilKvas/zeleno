import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru')
  ];

  /// No description provided for @positiveResponse.
  ///
  /// In ru, this message translates to:
  /// **'Да'**
  String get positiveResponse;

  /// No description provided for @bottomMenuFirstItem.
  ///
  /// In ru, this message translates to:
  /// **'Мой сад'**
  String get bottomMenuFirstItem;

  /// No description provided for @bottomMenuSecondItem.
  ///
  /// In ru, this message translates to:
  /// **'Поиск'**
  String get bottomMenuSecondItem;

  /// No description provided for @bottomMenuThirdItem.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get bottomMenuThirdItem;

  /// No description provided for @startWithTutorialButtonTitle.
  ///
  /// In ru, this message translates to:
  /// **'Выращивать по туториалу'**
  String get startWithTutorialButtonTitle;

  /// No description provided for @toTheGardenButtonTitle.
  ///
  /// In ru, this message translates to:
  /// **'В сад'**
  String get toTheGardenButtonTitle;

  /// No description provided for @plantDetailMenuSpecifications.
  ///
  /// In ru, this message translates to:
  /// **'Характеристики'**
  String get plantDetailMenuSpecifications;

  /// No description provided for @plantDetailMenuCare.
  ///
  /// In ru, this message translates to:
  /// **'Уход'**
  String get plantDetailMenuCare;

  /// No description provided for @plantDetailMenuGrowth.
  ///
  /// In ru, this message translates to:
  /// **'Развитие'**
  String get plantDetailMenuGrowth;

  /// No description provided for @plantDetailDescription.
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get plantDetailDescription;

  /// No description provided for @plantDetailScientificClassification.
  ///
  /// In ru, this message translates to:
  /// **'Научная классификация'**
  String get plantDetailScientificClassification;

  /// No description provided for @tags.
  ///
  /// In ru, this message translates to:
  /// **'Теги'**
  String get tags;

  /// No description provided for @unknownName.
  ///
  /// In ru, this message translates to:
  /// **'Неизвестное имя'**
  String get unknownName;

  /// No description provided for @noTagsAvailable.
  ///
  /// In ru, this message translates to:
  /// **'Нет тегов'**
  String get noTagsAvailable;

  /// No description provided for @noInfoAboutRegularEvents.
  ///
  /// In ru, this message translates to:
  /// **'Нет информации о регулярных событиях'**
  String get noInfoAboutRegularEvents;

  /// No description provided for @plantHeightRange.
  ///
  /// In ru, this message translates to:
  /// **'{from} - {to} см'**
  String plantHeightRange(String from, String to);

  /// No description provided for @plantWidthRange.
  ///
  /// In ru, this message translates to:
  /// **'{from} - {to} см'**
  String plantWidthRange(String from, String to);

  /// No description provided for @plantYearsToMaxHeightRange.
  ///
  /// In ru, this message translates to:
  /// **'{from}-{to} лет'**
  String plantYearsToMaxHeightRange(String from, String to);

  /// No description provided for @examplesTitle.
  ///
  /// In ru, this message translates to:
  /// **'Примеры'**
  String get examplesTitle;

  /// No description provided for @examplesLocalizationTitle.
  ///
  /// In ru, this message translates to:
  /// **'Примеры локализации'**
  String get examplesLocalizationTitle;

  /// No description provided for @string.
  ///
  /// In ru, this message translates to:
  /// **'Привет, {name}!'**
  String string(String name);

  /// No description provided for @weekDay.
  ///
  /// In ru, this message translates to:
  /// **'{date}'**
  String weekDay(DateTime date);

  /// No description provided for @dateAndTime.
  ///
  /// In ru, this message translates to:
  /// **'{date}, {time}'**
  String dateAndTime(DateTime date, DateTime time);

  /// Количетво сообщений
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, zero{У вас нет новых сообщений} one{У вас 1 новое ообщение} other{У вас {count} новых сообщений}}'**
  String inboxCount(num count);

  /// No description provided for @tempScreenDashNavBarItemLabel.
  ///
  /// In ru, this message translates to:
  /// **'Dash экран'**
  String get tempScreenDashNavBarItemLabel;

  /// No description provided for @tempScreenInfoNavBarItemLabel.
  ///
  /// In ru, this message translates to:
  /// **'Инфо экран'**
  String get tempScreenInfoNavBarItemLabel;

  /// No description provided for @tempScreenDebugNavBarItemLabel.
  ///
  /// In ru, this message translates to:
  /// **'Дебаг экран'**
  String get tempScreenDebugNavBarItemLabel;

  /// No description provided for @debugScreenTitle.
  ///
  /// In ru, this message translates to:
  /// **'Экран отладки'**
  String get debugScreenTitle;

  /// No description provided for @debugScreenServerSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Сервер'**
  String get debugScreenServerSubtitle;

  /// No description provided for @debugScreenServerConnectButton.
  ///
  /// In ru, this message translates to:
  /// **'Переключить сервер'**
  String get debugScreenServerConnectButton;

  /// No description provided for @debugScreenProxySubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Прокси'**
  String get debugScreenProxySubtitle;

  /// No description provided for @debugScreenProxyInfo.
  ///
  /// In ru, this message translates to:
  /// **'Активирует передачу через прокси сервер.'**
  String get debugScreenProxyInfo;

  /// No description provided for @debugScreenProxyEditTextLabel.
  ///
  /// In ru, this message translates to:
  /// **'Введите адресс прокси сервера'**
  String get debugScreenProxyEditTextLabel;

  /// No description provided for @debugScreenProxyConnectButton.
  ///
  /// In ru, this message translates to:
  /// **'Подключить'**
  String get debugScreenProxyConnectButton;

  /// No description provided for @debugScreenThemeSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Тема приложения'**
  String get debugScreenThemeSubtitle;

  /// No description provided for @debugScreenThemeLight.
  ///
  /// In ru, this message translates to:
  /// **'Светлая тема'**
  String get debugScreenThemeLight;

  /// No description provided for @debugScreenThemeDark.
  ///
  /// In ru, this message translates to:
  /// **'Темная темя'**
  String get debugScreenThemeDark;

  /// No description provided for @debugScreenThemeSystem.
  ///
  /// In ru, this message translates to:
  /// **'Системная тема'**
  String get debugScreenThemeSystem;

  /// No description provided for @debugScreenUikitNavigateButton.
  ///
  /// In ru, this message translates to:
  /// **'Открыть UIKit'**
  String get debugScreenUikitNavigateButton;

  /// No description provided for @debugScreenReloadAppMessage.
  ///
  /// In ru, this message translates to:
  /// **'Перезагрузите приложение, чтобы увидеть примененные изменения'**
  String get debugScreenReloadAppMessage;

  /// No description provided for @uiKitScreenTitle.
  ///
  /// In ru, this message translates to:
  /// **'UI Kit'**
  String get uiKitScreenTitle;

  /// No description provided for @uiKitScreenTextFieldLabel.
  ///
  /// In ru, this message translates to:
  /// **'Text Field'**
  String get uiKitScreenTextFieldLabel;

  /// No description provided for @uiKitScreenCardText.
  ///
  /// In ru, this message translates to:
  /// **'Card'**
  String get uiKitScreenCardText;

  /// No description provided for @uiKitScreenText.
  ///
  /// In ru, this message translates to:
  /// **'Text'**
  String get uiKitScreenText;

  /// No description provided for @uiKitScreenPrimaryButtonText.
  ///
  /// In ru, this message translates to:
  /// **'Primary Button'**
  String get uiKitScreenPrimaryButtonText;

  /// No description provided for @uiKitScreenPrimaryButtonSnackText.
  ///
  /// In ru, this message translates to:
  /// **'Primary Button Pressed'**
  String get uiKitScreenPrimaryButtonSnackText;

  /// No description provided for @uiKitScreenSecondaryButtonText.
  ///
  /// In ru, this message translates to:
  /// **'Secondary Button'**
  String get uiKitScreenSecondaryButtonText;

  /// No description provided for @uiKitScreenSecondaryButtonSnackText.
  ///
  /// In ru, this message translates to:
  /// **'Secondary Button Pressed'**
  String get uiKitScreenSecondaryButtonSnackText;

  /// No description provided for @uiKitScreenTertiaryButtonText.
  ///
  /// In ru, this message translates to:
  /// **'Tertiary Button'**
  String get uiKitScreenTertiaryButtonText;

  /// No description provided for @uiKitScreenTertiaryButtonSnackText.
  ///
  /// In ru, this message translates to:
  /// **'Tertiary Button Pressed'**
  String get uiKitScreenTertiaryButtonSnackText;

  /// No description provided for @uiKitScreenTetradicButtonText.
  ///
  /// In ru, this message translates to:
  /// **'Tetradic button'**
  String get uiKitScreenTetradicButtonText;

  /// No description provided for @uiKitScreenTetradicButtonSnackText.
  ///
  /// In ru, this message translates to:
  /// **'Tetradic Button Pressed'**
  String get uiKitScreenTetradicButtonSnackText;

  /// No description provided for @uiKitScreenDangerSnackButtonText.
  ///
  /// In ru, this message translates to:
  /// **'Danger snack'**
  String get uiKitScreenDangerSnackButtonText;

  /// No description provided for @uiKitScreenDangerSnackText.
  ///
  /// In ru, this message translates to:
  /// **'Danger snack'**
  String get uiKitScreenDangerSnackText;

  /// No description provided for @uiKitScreenPositiveSnackButtonText.
  ///
  /// In ru, this message translates to:
  /// **'Positive snack'**
  String get uiKitScreenPositiveSnackButtonText;

  /// No description provided for @uiKitScreenPositiveSnackText.
  ///
  /// In ru, this message translates to:
  /// **'Positive snack'**
  String get uiKitScreenPositiveSnackText;

  /// No description provided for @uiKitScreenColorCardPrimaryName.
  ///
  /// In ru, this message translates to:
  /// **'Primary'**
  String get uiKitScreenColorCardPrimaryName;

  /// No description provided for @uiKitScreenColorCardSecondaryName.
  ///
  /// In ru, this message translates to:
  /// **'Secondary'**
  String get uiKitScreenColorCardSecondaryName;

  /// No description provided for @uiKitScreenColorCardSurfaceName.
  ///
  /// In ru, this message translates to:
  /// **'Surface'**
  String get uiKitScreenColorCardSurfaceName;

  /// No description provided for @uiKitScreenColorCardSurfaceSecondaryName.
  ///
  /// In ru, this message translates to:
  /// **'Surface Secondary'**
  String get uiKitScreenColorCardSurfaceSecondaryName;

  /// No description provided for @uiKitScreenColorCardBackgroundName.
  ///
  /// In ru, this message translates to:
  /// **'Background'**
  String get uiKitScreenColorCardBackgroundName;

  /// No description provided for @uiKitScreenColorCardBackgroundSecondaryName.
  ///
  /// In ru, this message translates to:
  /// **'Background Secondary'**
  String get uiKitScreenColorCardBackgroundSecondaryName;

  /// No description provided for @uiKitScreenColorCardBackgroundTertiaryName.
  ///
  /// In ru, this message translates to:
  /// **'Background Tertiary'**
  String get uiKitScreenColorCardBackgroundTertiaryName;

  /// No description provided for @uiKitScreenColorCardBackgroundTetradicName.
  ///
  /// In ru, this message translates to:
  /// **'Tetradic Background'**
  String get uiKitScreenColorCardBackgroundTetradicName;

  /// No description provided for @uiKitScreenColorCardDangerName.
  ///
  /// In ru, this message translates to:
  /// **'Danger'**
  String get uiKitScreenColorCardDangerName;

  /// No description provided for @uiKitScreenColorCardDangerSecondaryName.
  ///
  /// In ru, this message translates to:
  /// **'Danger Secondary'**
  String get uiKitScreenColorCardDangerSecondaryName;

  /// No description provided for @uiKitScreenColorCardTextFieldName.
  ///
  /// In ru, this message translates to:
  /// **'Text Field'**
  String get uiKitScreenColorCardTextFieldName;

  /// No description provided for @uiKitScreenColorCardTextFieldLabelName.
  ///
  /// In ru, this message translates to:
  /// **'Text Field Label'**
  String get uiKitScreenColorCardTextFieldLabelName;

  /// No description provided for @uiKitScreenColorCardTextFieldHelperName.
  ///
  /// In ru, this message translates to:
  /// **'Text Field Helper'**
  String get uiKitScreenColorCardTextFieldHelperName;

  /// No description provided for @uiKitScreenColorCardFrameTextFieldSecondaryName.
  ///
  /// In ru, this message translates to:
  /// **'Frame Text Field Secondary'**
  String get uiKitScreenColorCardFrameTextFieldSecondaryName;

  /// No description provided for @uiKitScreenColorCardInactiveName.
  ///
  /// In ru, this message translates to:
  /// **'Inactive'**
  String get uiKitScreenColorCardInactiveName;

  /// No description provided for @uiKitScreenColorCardPositiveName.
  ///
  /// In ru, this message translates to:
  /// **'Positive'**
  String get uiKitScreenColorCardPositiveName;

  /// No description provided for @uiKitScreenColorCardSkeletonPrimaryName.
  ///
  /// In ru, this message translates to:
  /// **'Skeleton Primary'**
  String get uiKitScreenColorCardSkeletonPrimaryName;

  /// No description provided for @uiKitScreenColorCardSkeletonSecondaryName.
  ///
  /// In ru, this message translates to:
  /// **'Skeleton Secondary'**
  String get uiKitScreenColorCardSkeletonSecondaryName;

  /// No description provided for @uiKitScreenColorCardSkeletonTertiaryName.
  ///
  /// In ru, this message translates to:
  /// **'Skeleton Tertiary'**
  String get uiKitScreenColorCardSkeletonTertiaryName;

  /// No description provided for @featureExampleFailedLoadIpMessage.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить IP-адрес'**
  String get featureExampleFailedLoadIpMessage;

  /// No description provided for @search.
  ///
  /// In ru, this message translates to:
  /// **'Поиск'**
  String get search;

  /// No description provided for @title.
  ///
  /// In ru, this message translates to:
  /// **'FROM SEED'**
  String get title;

  /// No description provided for @firstPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Энциклопедия в вашем телефоне'**
  String get firstPageTitle;

  /// No description provided for @firstPageSubTitle.
  ///
  /// In ru, this message translates to:
  /// **'Более 500 000 видов с детальным описанием.Находите нужное растение за секунды через умный поиск.'**
  String get firstPageSubTitle;

  /// No description provided for @secondPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Уход за растениями без сложностей'**
  String get secondPageTitle;

  /// No description provided for @secondPageSubTitle.
  ///
  /// In ru, this message translates to:
  /// **'Понятные карточки растений с важными параметрами ухода.Точно знайте, когда поливать и пересаживать'**
  String get secondPageSubTitle;

  /// No description provided for @thirdPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Станьте экспертом по выращиванию'**
  String get thirdPageTitle;

  /// No description provided for @thirdPageSubTitle.
  ///
  /// In ru, this message translates to:
  /// **'Персонализированные гайды с пошаговыми инструкциями.От семечка до цветущего растения под вашим руководством'**
  String get thirdPageSubTitle;

  /// No description provided for @next.
  ///
  /// In ru, this message translates to:
  /// **'Далее'**
  String get next;

  /// No description provided for @start.
  ///
  /// In ru, this message translates to:
  /// **'Начать'**
  String get start;

  /// No description provided for @login.
  ///
  /// In ru, this message translates to:
  /// **'Войдите в аккаунт'**
  String get login;

  /// No description provided for @register.
  ///
  /// In ru, this message translates to:
  /// **'Создайте аккаунт'**
  String get register;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
