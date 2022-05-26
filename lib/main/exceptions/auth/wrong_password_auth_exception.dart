import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class WrongPasswordAuthException extends AuthBaseException {
  WrongPasswordAuthException() : super(_message);
  static const String _message = "invalid password!";
}
