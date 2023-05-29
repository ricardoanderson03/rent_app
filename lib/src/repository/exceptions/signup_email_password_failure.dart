class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occured"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure(
            'Please enter a stronger password.');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('Format email salah');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure(
            'Akun dah terdaftar pada email ini');
      case 'opertaion-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
            'operation is not allowed. Please contact support.');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
            'This User has been diabled. Please contac support for help');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
