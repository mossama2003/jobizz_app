class CustomAppValidators {

  static String? required({String? value, String? error}) {
    if (value == null || value.isEmpty) {
      return error ?? 'Required';
    } else {
      return null;
    }
  }

  static String? email({String? value, String? error}) {
    if (value == null || value.isEmpty) {
      return error ?? 'Email is Required';
    }
    else if (!value.contains('@')) {
      return 'Email is valid';
    }
    final List<String> spilt = value.split('@');

    if (spilt.length != 2 || spilt.contains('')) {
      return 'Email is valid';
    }
    return null;
  }

  static String? password({String? value, String? error}) {
    if (value == null || value.isEmpty) {
      return error ?? 'Password is Required';
    }
    else if (value.length != 8) {
      return 'Password should be 8 character';
    }
    else if (!value.contains('@') && !value.contains('\$')) {
      return 'Password should be has a special character';
    }
    return null;
  }

  static String? phoneNumber({required String? value}) {
    if (value == null || value.isEmpty || !RegExp(r'^\d+$').hasMatch(value)) {
      return 'Enter a valid phone number';
    }
    return null;
  }
}

