import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class LogInAgainAuthException extends AuthBaseException {
  LogInAgainAuthException() : super(_message);
  static const String _message = "login again!";
}
