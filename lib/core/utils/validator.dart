// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:user_register/core/values/app_strings.dart';

/*========================Email Validator==============================================*/
class Validator {
  static String? fieldChecker({required String value, required message}) {
    if (value.toString().trim().isEmpty) {
      return "$message ${AppStrings.strCannotBeEmpty}";
    }
    return null;
  }

  static String? phoneChecker({required String value, required message}) {
    if (value.toString().trim().isEmpty) {
      return "$message ${AppStrings.strCannotBeEmpty}";
    } else if (value.length != 14) {
      return AppStrings.strTheNumberWasEnteredIncorrectly;
    }
    return null;
  }
}
