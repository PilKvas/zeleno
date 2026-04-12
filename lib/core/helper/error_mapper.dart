import 'package:zeleno_v2/data/network/exeptions/exeptions.dart';
import 'package:zeleno_v2/l10n/gen/app_localizations.dart';

String mapErrorToMessage(Object error, AppLocalizations l10n) {
  if (error is Conflict) {
    return error.errorResponse?.message ?? l10n.loginError;
  }
  if (error is UnprocessableError) {
    return error.errorResponse?.message ?? l10n.loginError;
  }
  if (error is Unauthorized) {
    return l10n.invalidCredentialsError;
  }
  if (error is BadRequest) {
    return error.errorResponse?.message ?? l10n.badRequestError;
  }
  if (error is Forbidden) {
    return error.errorResponse?.message ?? l10n.unknownError;
  }
  if (error is NotFound) {
    return error.errorResponse?.message ?? l10n.unknownError;
  }
  if (error is NoInternetConnection) {
    return l10n.noInternetError;
  }
  if (error is ServerUnavailable) {
    return l10n.serverUnavailableError;
  }
  return l10n.unknownError;
}

String mapRegistrationErrorToMessage(Object error, AppLocalizations l10n) {
  if (error is Conflict) {
    final detail = error.errorResponse?.message ?? '';
    if (detail.toLowerCase().contains('username')) {
      return l10n.usernameAlreadyExists;
    }
    if (detail.toLowerCase().contains('email')) {
      return l10n.emailAlreadyExists;
    }
    return error.errorResponse?.message ?? l10n.registrationError;
  }
  if (error is UnprocessableError) {
    return error.errorResponse?.message ?? l10n.registrationError;
  }
  if (error is BadRequest) {
    return error.errorResponse?.message ?? l10n.badRequestRegistrationError;
  }
  if (error is Forbidden) {
    return error.errorResponse?.message ?? l10n.unknownRegistrationError;
  }
  if (error is NotFound) {
    return error.errorResponse?.message ?? l10n.unknownRegistrationError;
  }
  if (error is NoInternetConnection) {
    return l10n.noInternetError;
  }
  if (error is ServerUnavailable) {
    return l10n.serverUnavailableError;
  }
  return l10n.unknownRegistrationError;
}
