import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class OperationNotAllowedAuthException extends AuthBaseException {
  OperationNotAllowedAuthException() : super(_message);
  static const String _message = "operation not allowed!";
}
