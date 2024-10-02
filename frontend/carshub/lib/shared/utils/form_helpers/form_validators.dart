abstract class StringValidator {
  bool isValid(String value);
}

class RegexValidator implements StringValidator {
  RegexValidator({required this.regexSource});

  final String regexSource;

  @override
  bool isValid(String value) {
    try {
      final RegExp regex = RegExp(regexSource);
      final Iterable<Match> matches = regex.allMatches(value);

      for (final match in matches) {
        if (match.start == 0 && match.end == value.length) {
          return true;
        }
      }

      return false;
    } catch (e) {
      assert(false, e.toString());
      return true;
    }
  }
}

class EmailSubmitRegexValidator extends RegexValidator {
  EmailSubmitRegexValidator()
      : super(
            regexSource: r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)');
}

class GSTNumberSubmitRegexValidator extends RegexValidator {
  GSTNumberSubmitRegexValidator()
      : super(
            regexSource:
                r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$');
}

class PasswordSubmitRegexValidator extends RegexValidator {
  PasswordSubmitRegexValidator()
      : super(
            regexSource:
                r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*();:,."-_/#?&])[A-Za-z\d@$!%*();:,."-_/#?&]{8,}$');
}

class NonEmptyStringValidator extends StringValidator {
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class MinLengthStringValidator extends StringValidator {
  MinLengthStringValidator(this.minLength);
  final int minLength;

  @override
  bool isValid(String value) {
    return value.length >= minLength;
  }
}

class FormValidators {
  static mobileNumberValidator(value) {
    if (value.isEmpty) return "Mobile No should not be empty";
    if (value.length != 10) return "Invalid Mobile No ";
  }

  static passwordValidator(value) {
    if (value.isEmpty) return "Password should not be empty";
  }

  static stringRequiredValidator(value) {
    if (value.isEmpty) return "Field should not be empty";
  }

  static emailValidator(value) {
    if (!EmailSubmitRegexValidator().isValid(value) && value.isNotEmpty) {
      return "Invalid Email";
    }
    // if (value.isEmpty) return "Email should not be empty";
  }
}
