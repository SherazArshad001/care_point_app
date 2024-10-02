extension ValidatorExt on String {
  bool get isValidEmail {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
  }

  String? get emailValidation {
    if (isEmpty) {
      return 'Email is required.';
    } else if (!isValidEmail) {
      return 'Please enter a valid email.';
    }
    return null;
  }
}
