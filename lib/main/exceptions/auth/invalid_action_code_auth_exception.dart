import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class InvalidActionCodeAuthException extends AuthBaseException {
  InvalidActionCodeAuthException() : super(_message);
  static const String _message = "invalid action code!";
}
