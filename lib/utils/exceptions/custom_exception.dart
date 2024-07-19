// Custom exception classes
class TFirebaseAuthException implements Exception {
  final String message;

  TFirebaseAuthException(this.message);

  @override
  String toString() => message;
}

class TFirebaseException implements Exception {
  final String message;

  TFirebaseException(this.message);

  @override
  String toString() => message;
}

class TFormatException implements Exception {
  @override
  String toString() => 'Invalid email or password format.';
}

class TPlatformException implements Exception {
  final String message;

  TPlatformException(this.message);

  @override
  String toString() => message;
}

class TUnknownException implements Exception {
  @override
  String toString() => 'Something went wrong. Please try again.';
}
