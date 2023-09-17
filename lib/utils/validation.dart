String? validateEmail(String? text) {
  if ((text ?? "").isEmpty) {
    return "emptyEmail";
  }
  if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text!)) {
    return "incorrectEmail";
  }
  return null;
}

String? validateDomainEmail(String? text, String domain) {
  if ((text ?? "").isEmpty) {
    return "emptyEmail";
  }

  if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text!)) {
    return "incorrectEmail";
  } else {
    if (!RegExp(r"^[a-zA-Z0-9.]+@" + domain).hasMatch(text)) {
      return "incorrectDomain";
    }
  }
  return null;
}

String? validatePassword(String? value) {
  if ((value ?? "").isEmpty) return "emptyPassword";
  if (value!.length < 8) return "shortPassword";
  if (value.length > 23) return "longPassword";

  // prevent sql injection
  if (RegExp(r"[^a-zA-Z0-9!@#$%^&*()_+|<>?]+").hasMatch(value)) {
    return "invalidPassword";
  }

  return null;
}

String? validateConfirmPassword(String? value, String origin) {
  if ((value ?? "").isEmpty) return "emptyConfirmPassword";
  if (value! != origin) return "differentPassword";

  // prevent sql injection
  if (RegExp(r"[^a-zA-Z0-9!@#$%^&*()_+|<>?]+").hasMatch(value)) {
    return "invalidConfirmPassword";
  }

  return null;
}
