import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class InvalidEmailAuthException extends AuthBaseException {
  InvalidEmailAuthException() : super(_message);
  static const String _message = "invalid email!";
}
