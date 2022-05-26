import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class AccountExistsWithDifferentCredentialAuthException extends AuthBaseException {
  AccountExistsWithDifferentCredentialAuthException() : super(_message);
  static const String _message = "account exists with different credential!";
}
