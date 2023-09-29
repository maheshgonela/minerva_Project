part of core;

class Validator {
  static bool isValidPositiveNumber(String num) {
    return num.trim().isNotEmpty &&
        int.tryParse(num) != null &&
        !num.startsWith("-");
  }

  static bool isValidString(String value) {
    return value.trim().isNotEmpty;
  }
}
