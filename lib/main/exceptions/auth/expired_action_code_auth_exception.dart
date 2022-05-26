import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class ExpiredActionCodeAuthException extends AuthBaseException {
  ExpiredActionCodeAuthException() : super(_message);
  static const String _message = "expired action code!";
}
