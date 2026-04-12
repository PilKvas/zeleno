import 'package:flutter/material.dart';
import 'package:zeleno_v2/l10n/gen/app_localizations.dart';

abstract final class Validator {
  static FormFieldValidator<String> password(AppLocalizations l10n) {
    return (value) {
      if (value == null || value.isEmpty) {
        return l10n.enterPasswordError;
      }
      if (value.length < 8) {
        return l10n.passwordTooShortError;
      }
      return null;
    };
  }

  static FormFieldValidator<String> email(AppLocalizations l10n) {
    return (value) {
      if (value == null || value.isEmpty) {
        return l10n.enterEmailError;
      }
      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
        return l10n.emailInvalidError;
      }
      return null;
    };
  }

  static FormFieldValidator<String> confirmPassword(
    AppLocalizations l10n,
    TextEditingController passwordController,
  ) {
    return (value) {
      if (value == null || value.isEmpty) {
        return l10n.enterPasswordError;
      }
      if (value != passwordController.text) {
        return l10n.passwordMatchError;
      }
      return null;
    };
  }
}
