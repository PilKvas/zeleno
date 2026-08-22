// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get positiveResponse => 'Yes';

  @override
  String get bottomMenuFirstItem => 'My garden';

  @override
  String get bottomMenuSecondItem => 'Search';

  @override
  String get bottomMenuThirdItem => 'Profile';

  @override
  String get startWithTutorialButtonTitle => 'Grow with a tutorial';

  @override
  String get toTheGardenButtonTitle => 'Add to my garden';

  @override
  String get plantDetailMenuSpecifications => 'Specifications';

  @override
  String get plantDetailMenuCare => 'Care';

  @override
  String get plantDetailMenuGrowth => 'Growth';

  @override
  String get plantDetailDescription => 'Description';

  @override
  String get plantDetailScientificClassification => 'Scientific classification';

  @override
  String get tags => 'Tags';

  @override
  String get unknownName => 'Unknown name';

  @override
  String get noTagsAvailable => 'No tags';

  @override
  String get noInfoAboutRegularEvents => 'No information about regular events';

  @override
  String plantHeightRange(String from, String to) {
    return '$from - $to cm';
  }

  @override
  String plantWidthRange(String from, String to) {
    return '$from - $to cm';
  }

  @override
  String plantYearsToMaxHeightRange(String from, String to) {
    return '$from-$to years';
  }

  @override
  String get examplesTitle => 'Examples';

  @override
  String get examplesLocalizationTitle => 'Localization examples';

  @override
  String string(String name) {
    return 'Hello, $name!';
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
      other: 'You have $count new messages',
      one: 'You have 1 new message',
      zero: 'You have no new messages',
    );
    return '$_temp0';
  }

  @override
  String get tempScreenDashNavBarItemLabel => 'Dash screen';

  @override
  String get tempScreenInfoNavBarItemLabel => 'Info screen';

  @override
  String get tempScreenDebugNavBarItemLabel => 'Debug screen';

  @override
  String get debugScreenTitle => 'Debug screen';

  @override
  String get debugScreenServerSubtitle => 'Server';

  @override
  String get debugScreenServerConnectButton => 'Switch server';

  @override
  String get debugScreenProxySubtitle => 'Proxy';

  @override
  String get debugScreenProxyInfo => 'Enables traffic through a proxy server.';

  @override
  String get debugScreenProxyEditTextLabel => 'Enter the proxy server address';

  @override
  String get debugScreenProxyConnectButton => 'Connect';

  @override
  String get debugScreenThemeSubtitle => 'App theme';

  @override
  String get debugScreenThemeLight => 'Light theme';

  @override
  String get debugScreenThemeDark => 'Dark theme';

  @override
  String get debugScreenThemeSystem => 'System theme';

  @override
  String get debugScreenUikitNavigateButton => 'Open UIKit';

  @override
  String get debugScreenReloadAppMessage =>
      'Restart the app to see the applied changes';

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
  String get uiKitScreenColorCardBackgroundSecondaryName =>
      'Background Secondary';

  @override
  String get uiKitScreenColorCardBackgroundTertiaryName =>
      'Background Tertiary';

  @override
  String get uiKitScreenColorCardBackgroundTetradicName =>
      'Tetradic Background';

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
  String get uiKitScreenColorCardFrameTextFieldSecondaryName =>
      'Frame Text Field Secondary';

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
  String get featureExampleFailedLoadIpMessage => 'Failed to load IP address';

  @override
  String get search => 'Search';

  @override
  String get title => 'FROM SEED';

  @override
  String get firstPageTitle => 'An encyclopedia in your pocket';

  @override
  String get firstPageSubTitle =>
      'Over 500,000 species with detailed descriptions. Find the plant you need in seconds with smart search.';

  @override
  String get secondPageTitle => 'Plant care without the hassle';

  @override
  String get secondPageSubTitle =>
      'Clear plant cards with the care details that matter. Know exactly when to water and repot.';

  @override
  String get thirdPageTitle => 'Become a growing expert';

  @override
  String get thirdPageSubTitle =>
      'Personalized guides with step-by-step instructions. From seed to blooming plant under your care.';

  @override
  String get next => 'Next';

  @override
  String get start => 'Get started';

  @override
  String get login => 'Sign in to your account';

  @override
  String get register => 'Create an account';

  @override
  String get nameHint => 'Name';

  @override
  String get passwordHint => 'Password';

  @override
  String get loginButton => 'Sign in';

  @override
  String get enterNameError => 'Enter your name';

  @override
  String get nameTooShortError => 'Name is too short';

  @override
  String get enterPasswordError => 'Enter your password';

  @override
  String get passwordTooShortError => 'Password is shorter than 8 characters';

  @override
  String get loginSuccess => 'Signed in successfully!';

  @override
  String get orSeparator => 'OR';

  @override
  String get noAccountQuestion => 'Don\'t have an account?';

  @override
  String get registerAction => 'Sign up!';

  @override
  String get enterEmailError => 'Enter your email';

  @override
  String get emailInvalidError => 'Enter a valid email';

  @override
  String get registrationSuccess =>
      'Registration successful! You can now sign in.';

  @override
  String get emailHint => 'Email';

  @override
  String get confirmPasswordHint => 'Repeat password';

  @override
  String get passwordMatchError => 'Passwords do not match';

  @override
  String get registerButton => 'Sign up';

  @override
  String get alreadyHaveAccountQuestion => 'Already have an account?';

  @override
  String get loginAction => 'Sign in!';

  @override
  String get forgotPasswordAction => 'Forgot your password?';

  @override
  String get forgotPasswordTitle => 'Password recovery';

  @override
  String get forgotPasswordEmailDescription =>
      'Enter your email and we will send a confirmation code.';

  @override
  String get forgotPasswordCodeTitle => 'Enter the code';

  @override
  String forgotPasswordCodeDescription(String email) {
    return 'Enter the one-time code from the email sent to $email.';
  }

  @override
  String get forgotPasswordOtpHint => 'Code from the email';

  @override
  String get forgotPasswordOtpEmptyError => 'Enter the code from the email';

  @override
  String get forgotPasswordOtpLengthError => 'The code must contain 6 digits';

  @override
  String get forgotPasswordNewPasswordTitle => 'New password';

  @override
  String get forgotPasswordNewPasswordDescription =>
      'Set a new password for your account.';

  @override
  String get forgotPasswordConfirmAction => 'Save password';

  @override
  String get forgotPasswordSuccess =>
      'Password changed successfully. Sign in with the new password.';

  @override
  String get loginError => 'Sign-in error';

  @override
  String get invalidCredentialsError => 'Invalid username or password';

  @override
  String get badRequestError => 'Invalid sign-in data';

  @override
  String get noInternetError => 'No internet connection';

  @override
  String get serverUnavailableError =>
      'The server is temporarily unavailable, please try again later';

  @override
  String get unknownError => 'An error occurred while signing in';

  @override
  String get registrationError => 'Registration error';

  @override
  String get usernameAlreadyExists => 'A user with this name already exists';

  @override
  String get emailAlreadyExists => 'A user with this email already exists';

  @override
  String get badRequestRegistrationError => 'Invalid registration data';

  @override
  String get unknownRegistrationError =>
      'An error occurred during registration';

  @override
  String get plantSearchHint => 'Search';

  @override
  String get plantSearchEmpty => 'Nothing found';

  @override
  String get plantSearchHint => 'Search';

  @override
  String get plantSearchEmpty => 'Nothing found';

  @override
  String get filtersSheetTitle => 'Filters';

  @override
  String get filtersSheetReset => 'Reset';

  @override
  String get filtersSheetLoadError => 'Failed to load filter values';

  @override
  String get filtersSheetMoisture => 'Moisture:';

  @override
  String get filtersSheetPh => 'Acidity:';

  @override
  String get filtersSheetHeightRange => 'Height range (cm)';

  @override
  String filtersSheetHeightCm(String value) {
    return '$value cm';
  }

  @override
  String get filtersSheetApply => 'Apply';

  @override
  String get addGardenPlantTitle => 'Add plant';

  @override
  String get addGardenPlantHeadline =>
      'Would you like to change the plant name or add a main photo?';

  @override
  String addGardenPlantRoomLabel(String roomName) {
    return 'Room: $roomName';
  }

  @override
  String get addGardenPlantNameHint => 'Plant name';

  @override
  String get addGardenPlantNameRequired => 'Enter a plant name';

  @override
  String get addGardenPlantNameTooLong =>
      'Name must be 255 characters or fewer';

  @override
  String get addGardenPlantPhotoLabel => 'Photo';

  @override
  String get addGardenPlantPickPhoto => 'Choose photo';

  @override
  String get addGardenPlantRemovePhoto => 'Remove';

  @override
  String get addGardenPlantSubmit => 'Next';

  @override
  String get addGardenPlantSave => 'Save';

  @override
  String get addGardenPlantSuccessTitle => 'Plant added successfully';

  @override
  String get addGardenPlantSuccessDescription =>
      'You can find and edit it in your garden';

  @override
  String get addGardenPlantImageUploadFailed =>
      'Plant saved, but the photo could not be uploaded';

  @override
  String get addGardenPlantGoToGarden => 'My garden';

  @override
  String get addGardenPlantClose => 'Close';

  @override
  String get homeTabGarden => 'My garden';

  @override
  String get homeTabSearch => 'Search';

  @override
  String get homeTabProfile => 'Profile';

  @override
  String get gardenUnauthorizedDescription =>
      'Sign in to see your garden plants.';

  @override
  String get gardenPlantsListTitle => 'My garden';

  @override
  String get gardenPlantsListAllRooms => 'All';

  @override
  String get gardenPlantsListEmpty => 'You have no plants in your garden yet';

  @override
  String get gardenPlantsListLoadError => 'Failed to load plants';

  @override
  String get plantRoomsSelectionTitle => 'Choose where to place the plant';

  @override
  String get plantRoomsLoadError => 'Failed to load rooms';

  @override
  String get plantRoomsUnauthorizedTitle => 'You are not signed in';

  @override
  String get plantRoomsUnauthorizedDescription =>
      'Sign in to view and add rooms.';

  @override
  String get plantRoomsGoToProfile => 'Go to profile';

  @override
  String get plantRoomsManagementTitle => 'My rooms';

  @override
  String get plantRoomsAddTitle => 'Add room';

  @override
  String get plantRoomsEditTitle => 'Edit room';

  @override
  String get plantRoomsNameHint => 'Name';

  @override
  String get plantRoomsNameRequired => 'Enter a room name';

  @override
  String get plantRoomsTemperatureHint => 'Temperature (°C)';

  @override
  String get plantRoomsHumidityHint => 'Humidity (%)';

  @override
  String get plantRoomsIlluminanceHint => 'Illuminance (lux)';

  @override
  String get plantRoomsWindowDirectionHint => 'Window direction';

  @override
  String get plantRoomsWindowNorth => 'North';

  @override
  String get plantRoomsWindowSouth => 'South';

  @override
  String get plantRoomsWindowEast => 'East';

  @override
  String get plantRoomsWindowWest => 'West';

  @override
  String get plantRoomsSave => 'Save';

  @override
  String get plantRoomsDeleteTitle => 'Delete room?';

  @override
  String plantRoomsDeleteMessage(String roomName) {
    return 'Delete room \"$roomName\"? Plants in this room will remain in the garden.';
  }

  @override
  String get plantRoomsDeleteCancel => 'Cancel';

  @override
  String get plantRoomsDeleteConfirm => 'Delete';

  @override
  String get gardenPlantLoadError => 'Failed to load plant';

  @override
  String get gardenPlantEditTitle => 'Edit plant';

  @override
  String get gardenPlantNameHint => 'Name';

  @override
  String get gardenPlantNameRequired => 'Enter a plant name';

  @override
  String get gardenPlantRoomHint => 'Room';

  @override
  String get gardenPlantNoRoom => 'No room';

  @override
  String get gardenPlantRoomLabel => 'Room';

  @override
  String get gardenPlantSizeLabel => 'Size';

  @override
  String get gardenPlantSunlightLabel => 'Sunlight';

  @override
  String get gardenPlantPotSizeLabel => 'Pot size';

  @override
  String get gardenPlantLastWateringLabel => 'Last watering';

  @override
  String get gardenPlantLastRepottingLabel => 'Last repotting';

  @override
  String get gardenPlantDeletePhoto => 'Delete photo';

  @override
  String get gardenPlantDelete => 'Delete plant';

  @override
  String get gardenPlantDeleteTitle => 'Delete plant?';

  @override
  String get gardenPlantDeleteMessage =>
      'This plant will be removed from your garden.';

  @override
  String get gardenPlantCareRepotting => 'Repotting';

  @override
  String get gardenPlantCareWatering => 'Watering';

  @override
  String get gardenPlantCareFertilizing => 'Fertilizing';

  @override
  String get gardenPlantCareNoData => 'No data';

  @override
  String get gardenPlantOpenAllTags => 'Show all';

  @override
  String gardenPlantAge(String years) {
    return '$years years';
  }

  @override
  String gardenPlantSpreadMeters(String value) {
    return '$value m';
  }

  @override
  String gardenPlantHeightMeters(String value) {
    return '$value m';
  }

  @override
  String gardenPlantCareInterval(String min, String max, String unit) {
    return 'every $min–$max $unit';
  }

  @override
  String get retry => 'Retry';
}
