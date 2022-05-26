import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class WeakPasswordAuthException extends AuthBaseException {
  WeakPasswordAuthException() : super(_message);
  static const String _message = "weak password auth!";
}
