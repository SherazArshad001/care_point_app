mixin Validator {
  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'First name is required';
    } else if (value.length < 3) {
      return 'First name should be at least 3 characters';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.contains(' ')) {
      return 'Password cannot contains spaces';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }
}
