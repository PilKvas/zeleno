import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'app_localizations_en.dart';
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
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru'),
    Locale('en')
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
  /// **'Добавить в мой сад'**
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

  /// No description provided for @nameHint.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get nameHint;

  /// No description provided for @passwordHint.
  ///
  /// In ru, this message translates to:
  /// **'Пароль'**
  String get passwordHint;

  /// No description provided for @loginButton.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get loginButton;

  /// No description provided for @enterNameError.
  ///
  /// In ru, this message translates to:
  /// **'Введите имя'**
  String get enterNameError;

  /// No description provided for @nameTooShortError.
  ///
  /// In ru, this message translates to:
  /// **'Имя слишком короткое'**
  String get nameTooShortError;

  /// No description provided for @enterPasswordError.
  ///
  /// In ru, this message translates to:
  /// **'Введите пароль'**
  String get enterPasswordError;

  /// No description provided for @passwordTooShortError.
  ///
  /// In ru, this message translates to:
  /// **'Пароль меньше 8 символов'**
  String get passwordTooShortError;

  /// No description provided for @loginSuccess.
  ///
  /// In ru, this message translates to:
  /// **'Успешный вход в аккаунт!'**
  String get loginSuccess;

  /// No description provided for @orSeparator.
  ///
  /// In ru, this message translates to:
  /// **'ИЛИ'**
  String get orSeparator;

  /// No description provided for @noAccountQuestion.
  ///
  /// In ru, this message translates to:
  /// **'Не имеете аккаунта?'**
  String get noAccountQuestion;

  /// No description provided for @registerAction.
  ///
  /// In ru, this message translates to:
  /// **'Зарегистрируйтесь!'**
  String get registerAction;

  /// No description provided for @enterEmailError.
  ///
  /// In ru, this message translates to:
  /// **'Введите email'**
  String get enterEmailError;

  /// No description provided for @emailInvalidError.
  ///
  /// In ru, this message translates to:
  /// **'Введите корректный email'**
  String get emailInvalidError;

  /// No description provided for @registrationSuccess.
  ///
  /// In ru, this message translates to:
  /// **'Регистрация прошла успешно! Теперь вы можете войти в систему.'**
  String get registrationSuccess;

  /// No description provided for @emailHint.
  ///
  /// In ru, this message translates to:
  /// **'Почта'**
  String get emailHint;

  /// No description provided for @confirmPasswordHint.
  ///
  /// In ru, this message translates to:
  /// **'Повторите пароль'**
  String get confirmPasswordHint;

  /// No description provided for @passwordMatchError.
  ///
  /// In ru, this message translates to:
  /// **'Пароли не совпадают'**
  String get passwordMatchError;

  /// No description provided for @registerButton.
  ///
  /// In ru, this message translates to:
  /// **'Зарегистрироваться'**
  String get registerButton;

  /// No description provided for @alreadyHaveAccountQuestion.
  ///
  /// In ru, this message translates to:
  /// **'Уже есть аккаунт?'**
  String get alreadyHaveAccountQuestion;

  /// No description provided for @loginAction.
  ///
  /// In ru, this message translates to:
  /// **'Войдите!'**
  String get loginAction;

  /// No description provided for @forgotPasswordAction.
  ///
  /// In ru, this message translates to:
  /// **'Забыли пароль?'**
  String get forgotPasswordAction;

  /// No description provided for @forgotPasswordTitle.
  ///
  /// In ru, this message translates to:
  /// **'Восстановление пароля'**
  String get forgotPasswordTitle;

  /// No description provided for @forgotPasswordEmailDescription.
  ///
  /// In ru, this message translates to:
  /// **'Введите email, мы отправим код подтверждения.'**
  String get forgotPasswordEmailDescription;

  /// No description provided for @forgotPasswordCodeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Введите код'**
  String get forgotPasswordCodeTitle;

  /// No description provided for @forgotPasswordCodeDescription.
  ///
  /// In ru, this message translates to:
  /// **'Введите одноразовый код из письма, отправленного на {email}.'**
  String forgotPasswordCodeDescription(String email);

  /// No description provided for @forgotPasswordOtpHint.
  ///
  /// In ru, this message translates to:
  /// **'Код из письма'**
  String get forgotPasswordOtpHint;

  /// No description provided for @forgotPasswordOtpEmptyError.
  ///
  /// In ru, this message translates to:
  /// **'Введите код из письма'**
  String get forgotPasswordOtpEmptyError;

  /// No description provided for @forgotPasswordOtpLengthError.
  ///
  /// In ru, this message translates to:
  /// **'Код должен содержать 6 цифр'**
  String get forgotPasswordOtpLengthError;

  /// No description provided for @forgotPasswordNewPasswordTitle.
  ///
  /// In ru, this message translates to:
  /// **'Новый пароль'**
  String get forgotPasswordNewPasswordTitle;

  /// No description provided for @forgotPasswordNewPasswordDescription.
  ///
  /// In ru, this message translates to:
  /// **'Укажите новый пароль для вашего аккаунта.'**
  String get forgotPasswordNewPasswordDescription;

  /// No description provided for @forgotPasswordConfirmAction.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить пароль'**
  String get forgotPasswordConfirmAction;

  /// No description provided for @forgotPasswordSuccess.
  ///
  /// In ru, this message translates to:
  /// **'Пароль успешно изменен. Войдите с новым паролем.'**
  String get forgotPasswordSuccess;

  /// No description provided for @loginError.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка входа'**
  String get loginError;

  /// No description provided for @invalidCredentialsError.
  ///
  /// In ru, this message translates to:
  /// **'Неверное имя пользователя или пароль'**
  String get invalidCredentialsError;

  /// No description provided for @badRequestError.
  ///
  /// In ru, this message translates to:
  /// **'Некорректные данные для входа'**
  String get badRequestError;

  /// No description provided for @noInternetError.
  ///
  /// In ru, this message translates to:
  /// **'Отсутствует подключение к интернету'**
  String get noInternetError;

  /// No description provided for @serverUnavailableError.
  ///
  /// In ru, this message translates to:
  /// **'Сервер временно недоступен, попробуйте позже'**
  String get serverUnavailableError;

  /// No description provided for @unknownError.
  ///
  /// In ru, this message translates to:
  /// **'Произошла ошибка при входе в приложение'**
  String get unknownError;

  /// No description provided for @registrationError.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка регистрации'**
  String get registrationError;

  /// No description provided for @usernameAlreadyExists.
  ///
  /// In ru, this message translates to:
  /// **'Пользователь с таким именем уже существует'**
  String get usernameAlreadyExists;

  /// No description provided for @emailAlreadyExists.
  ///
  /// In ru, this message translates to:
  /// **'Пользователь с таким email уже существует'**
  String get emailAlreadyExists;

  /// No description provided for @badRequestRegistrationError.
  ///
  /// In ru, this message translates to:
  /// **'Некорректные данные для регистрации'**
  String get badRequestRegistrationError;

  /// No description provided for @unknownRegistrationError.
  ///
  /// In ru, this message translates to:
  /// **'Произошла ошибка при регистрации'**
  String get unknownRegistrationError;

  /// No description provided for @filtersSheetTitle.
  ///
  /// In ru, this message translates to:
  /// **'Фильтры'**
  String get filtersSheetTitle;

  /// No description provided for @filtersSheetReset.
  ///
  /// In ru, this message translates to:
  /// **'Сбросить'**
  String get filtersSheetReset;

  /// No description provided for @filtersSheetLoadError.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить значения фильтров'**
  String get filtersSheetLoadError;

  /// No description provided for @filtersSheetMoisture.
  ///
  /// In ru, this message translates to:
  /// **'Влажность:'**
  String get filtersSheetMoisture;

  /// No description provided for @filtersSheetPh.
  ///
  /// In ru, this message translates to:
  /// **'Кислотность:'**
  String get filtersSheetPh;

  /// No description provided for @filtersSheetHeightRange.
  ///
  /// In ru, this message translates to:
  /// **'Диапазон роста (см)'**
  String get filtersSheetHeightRange;

  /// No description provided for @filtersSheetHeightCm.
  ///
  /// In ru, this message translates to:
  /// **'{value} см'**
  String filtersSheetHeightCm(String value);

  /// No description provided for @filtersSheetApply.
  ///
  /// In ru, this message translates to:
  /// **'Применить'**
  String get filtersSheetApply;

  /// No description provided for @addGardenPlantTitle.
  ///
  /// In ru, this message translates to:
  /// **'Добавление растения'**
  String get addGardenPlantTitle;

  /// No description provided for @addGardenPlantHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Хотите изменить название растения или добавить главное фото?'**
  String get addGardenPlantHeadline;

  /// No description provided for @addGardenPlantRoomLabel.
  ///
  /// In ru, this message translates to:
  /// **'Комната: {roomName}'**
  String addGardenPlantRoomLabel(String roomName);

  /// No description provided for @addGardenPlantNameHint.
  ///
  /// In ru, this message translates to:
  /// **'Имя растения'**
  String get addGardenPlantNameHint;

  /// No description provided for @addGardenPlantNameRequired.
  ///
  /// In ru, this message translates to:
  /// **'Укажите имя растения'**
  String get addGardenPlantNameRequired;

  /// No description provided for @addGardenPlantNameTooLong.
  ///
  /// In ru, this message translates to:
  /// **'Имя не должно превышать 255 символов'**
  String get addGardenPlantNameTooLong;

  /// No description provided for @addGardenPlantPhotoLabel.
  ///
  /// In ru, this message translates to:
  /// **'Фотография'**
  String get addGardenPlantPhotoLabel;

  /// No description provided for @addGardenPlantPickPhoto.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать фото'**
  String get addGardenPlantPickPhoto;

  /// No description provided for @addGardenPlantRemovePhoto.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get addGardenPlantRemovePhoto;

  /// No description provided for @addGardenPlantSubmit.
  ///
  /// In ru, this message translates to:
  /// **'Дальше'**
  String get addGardenPlantSubmit;

  /// No description provided for @addGardenPlantSave.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get addGardenPlantSave;

  /// No description provided for @addGardenPlantSuccessTitle.
  ///
  /// In ru, this message translates to:
  /// **'Растение успешно добавлено'**
  String get addGardenPlantSuccessTitle;

  /// No description provided for @addGardenPlantSuccessDescription.
  ///
  /// In ru, this message translates to:
  /// **'Вы можете найти и изменить информацию о нем в вашем саду'**
  String get addGardenPlantSuccessDescription;

  /// No description provided for @addGardenPlantImageUploadFailed.
  ///
  /// In ru, this message translates to:
  /// **'Растение сохранено, но не удалось загрузить фото'**
  String get addGardenPlantImageUploadFailed;

  /// No description provided for @addGardenPlantGoToGarden.
  ///
  /// In ru, this message translates to:
  /// **'В мой сад'**
  String get addGardenPlantGoToGarden;

  /// No description provided for @addGardenPlantClose.
  ///
  /// In ru, this message translates to:
  /// **'Закрыть'**
  String get addGardenPlantClose;

  /// No description provided for @gardenPlantsListTitle.
  ///
  /// In ru, this message translates to:
  /// **'Мой сад'**
  String get gardenPlantsListTitle;

  /// No description provided for @gardenPlantsListAllRooms.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get gardenPlantsListAllRooms;

  /// No description provided for @gardenPlantsListEmpty.
  ///
  /// In ru, this message translates to:
  /// **'У вас пока нет растений в саду'**
  String get gardenPlantsListEmpty;

  /// No description provided for @gardenPlantsListLoadError.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить растения'**
  String get gardenPlantsListLoadError;

  /// No description provided for @plantRoomsSelectionTitle.
  ///
  /// In ru, this message translates to:
  /// **'Заполните информацию о расположении растения'**
  String get plantRoomsSelectionTitle;

  /// No description provided for @plantRoomsLoadError.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить комнаты'**
  String get plantRoomsLoadError;

  /// No description provided for @plantRoomsUnauthorizedTitle.
  ///
  /// In ru, this message translates to:
  /// **'Вы не авторизованы'**
  String get plantRoomsUnauthorizedTitle;

  /// No description provided for @plantRoomsUnauthorizedDescription.
  ///
  /// In ru, this message translates to:
  /// **'Чтобы просматривать и добавлять комнаты, войдите в аккаунт.'**
  String get plantRoomsUnauthorizedDescription;

  /// No description provided for @plantRoomsGoToProfile.
  ///
  /// In ru, this message translates to:
  /// **'Перейти в профиль'**
  String get plantRoomsGoToProfile;

  /// No description provided for @plantRoomsManagementTitle.
  ///
  /// In ru, this message translates to:
  /// **'Мои комнаты'**
  String get plantRoomsManagementTitle;

  /// No description provided for @plantRoomsAddTitle.
  ///
  /// In ru, this message translates to:
  /// **'Добавить комнату'**
  String get plantRoomsAddTitle;

  /// No description provided for @plantRoomsEditTitle.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать комнату'**
  String get plantRoomsEditTitle;

  /// No description provided for @plantRoomsNameHint.
  ///
  /// In ru, this message translates to:
  /// **'Название'**
  String get plantRoomsNameHint;

  /// No description provided for @plantRoomsNameRequired.
  ///
  /// In ru, this message translates to:
  /// **'Введите название комнаты'**
  String get plantRoomsNameRequired;

  /// No description provided for @plantRoomsTemperatureHint.
  ///
  /// In ru, this message translates to:
  /// **'Температура (°C)'**
  String get plantRoomsTemperatureHint;

  /// No description provided for @plantRoomsHumidityHint.
  ///
  /// In ru, this message translates to:
  /// **'Влажность (%)'**
  String get plantRoomsHumidityHint;

  /// No description provided for @plantRoomsIlluminanceHint.
  ///
  /// In ru, this message translates to:
  /// **'Освещенность (lux)'**
  String get plantRoomsIlluminanceHint;

  /// No description provided for @plantRoomsWindowDirectionHint.
  ///
  /// In ru, this message translates to:
  /// **'Направление окна'**
  String get plantRoomsWindowDirectionHint;

  /// No description provided for @plantRoomsWindowNorth.
  ///
  /// In ru, this message translates to:
  /// **'Север'**
  String get plantRoomsWindowNorth;

  /// No description provided for @plantRoomsWindowSouth.
  ///
  /// In ru, this message translates to:
  /// **'Юг'**
  String get plantRoomsWindowSouth;

  /// No description provided for @plantRoomsWindowEast.
  ///
  /// In ru, this message translates to:
  /// **'Восток'**
  String get plantRoomsWindowEast;

  /// No description provided for @plantRoomsWindowWest.
  ///
  /// In ru, this message translates to:
  /// **'Запад'**
  String get plantRoomsWindowWest;

  /// No description provided for @plantRoomsSave.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get plantRoomsSave;

  /// No description provided for @plantRoomsDeleteTitle.
  ///
  /// In ru, this message translates to:
  /// **'Удалить комнату?'**
  String get plantRoomsDeleteTitle;

  /// No description provided for @plantRoomsDeleteMessage.
  ///
  /// In ru, this message translates to:
  /// **'Удалить комнату «{roomName}»? Растения останутся в саду.'**
  String plantRoomsDeleteMessage(String roomName);

  /// No description provided for @plantRoomsDeleteCancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get plantRoomsDeleteCancel;

  /// No description provided for @plantRoomsDeleteConfirm.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get plantRoomsDeleteConfirm;

  /// No description provided for @gardenPlantLoadError.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить растение'**
  String get gardenPlantLoadError;

  /// No description provided for @gardenPlantEditTitle.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать растение'**
  String get gardenPlantEditTitle;

  /// No description provided for @gardenPlantNameHint.
  ///
  /// In ru, this message translates to:
  /// **'Название'**
  String get gardenPlantNameHint;

  /// No description provided for @gardenPlantNameRequired.
  ///
  /// In ru, this message translates to:
  /// **'Введите название растения'**
  String get gardenPlantNameRequired;

  /// No description provided for @gardenPlantRoomHint.
  ///
  /// In ru, this message translates to:
  /// **'Комната'**
  String get gardenPlantRoomHint;

  /// No description provided for @gardenPlantNoRoom.
  ///
  /// In ru, this message translates to:
  /// **'Без комнаты'**
  String get gardenPlantNoRoom;

  /// No description provided for @gardenPlantRoomLabel.
  ///
  /// In ru, this message translates to:
  /// **'Комната'**
  String get gardenPlantRoomLabel;

  /// No description provided for @gardenPlantSizeLabel.
  ///
  /// In ru, this message translates to:
  /// **'Размер'**
  String get gardenPlantSizeLabel;

  /// No description provided for @gardenPlantSunlightLabel.
  ///
  /// In ru, this message translates to:
  /// **'Освещение'**
  String get gardenPlantSunlightLabel;

  /// No description provided for @gardenPlantPotSizeLabel.
  ///
  /// In ru, this message translates to:
  /// **'Размер горшка'**
  String get gardenPlantPotSizeLabel;

  /// No description provided for @gardenPlantLastWateringLabel.
  ///
  /// In ru, this message translates to:
  /// **'Последний полив'**
  String get gardenPlantLastWateringLabel;

  /// No description provided for @gardenPlantLastRepottingLabel.
  ///
  /// In ru, this message translates to:
  /// **'Последняя пересадка'**
  String get gardenPlantLastRepottingLabel;

  /// No description provided for @gardenPlantDeletePhoto.
  ///
  /// In ru, this message translates to:
  /// **'Удалить фото'**
  String get gardenPlantDeletePhoto;

  /// No description provided for @gardenPlantDelete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить растение'**
  String get gardenPlantDelete;

  /// No description provided for @gardenPlantDeleteTitle.
  ///
  /// In ru, this message translates to:
  /// **'Удалить растение?'**
  String get gardenPlantDeleteTitle;

  /// No description provided for @gardenPlantDeleteMessage.
  ///
  /// In ru, this message translates to:
  /// **'Растение будет удалено из вашего сада.'**
  String get gardenPlantDeleteMessage;

  /// No description provided for @gardenPlantCareRepotting.
  ///
  /// In ru, this message translates to:
  /// **'Пересадка'**
  String get gardenPlantCareRepotting;

  /// No description provided for @gardenPlantCareWatering.
  ///
  /// In ru, this message translates to:
  /// **'Полив'**
  String get gardenPlantCareWatering;

  /// No description provided for @gardenPlantCareFertilizing.
  ///
  /// In ru, this message translates to:
  /// **'Удобрение'**
  String get gardenPlantCareFertilizing;

  /// No description provided for @gardenPlantCareNoData.
  ///
  /// In ru, this message translates to:
  /// **'Нет данных'**
  String get gardenPlantCareNoData;

  /// No description provided for @gardenPlantOpenAllTags.
  ///
  /// In ru, this message translates to:
  /// **'Открыть все'**
  String get gardenPlantOpenAllTags;

  /// No description provided for @gardenPlantAge.
  ///
  /// In ru, this message translates to:
  /// **'{years} лет'**
  String gardenPlantAge(String years);

  /// No description provided for @gardenPlantSpreadMeters.
  ///
  /// In ru, this message translates to:
  /// **'{value} м'**
  String gardenPlantSpreadMeters(String value);

  /// No description provided for @gardenPlantHeightMeters.
  ///
  /// In ru, this message translates to:
  /// **'{value} м'**
  String gardenPlantHeightMeters(String value);

  /// No description provided for @gardenPlantCareInterval.
  ///
  /// In ru, this message translates to:
  /// **'каждые {min}–{max} {unit}'**
  String gardenPlantCareInterval(String min, String max, String unit);

  /// No description provided for @retry.
  ///
  /// In ru, this message translates to:
  /// **'Повторить'**
  String get retry;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ru', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru':
      return AppLocalizationsRu();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
