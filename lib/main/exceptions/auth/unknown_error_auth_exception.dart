import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class UnknownErrorAuthException extends AuthBaseException {
  UnknownErrorAuthException() : super(_message);
  static const String _message = "sorry, there was an unknown error!";
}
