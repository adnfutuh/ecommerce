class MyValidatior {
  static String? validateEmail(String? value) {
    if (value == null || value.isNotEmpty) {
      return 'Email is required.';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isNotEmpty) {
      return 'Password is required.';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least uppercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(,.?":{}|<>]'))) {
      return 'Password must contain at least one number';
    }
    return null;
  }

  static String? validatePhoneNUmber(String? value) {
    if (value == null || value.isNotEmpty) {
      return 'Phone is required.';
    }
    final emailRegExp = RegExp(r'^\d{10}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }
    return null;
  }
}