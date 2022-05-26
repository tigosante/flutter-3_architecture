import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class EmailAlreadyInUseAuthException extends AuthBaseException {
  EmailAlreadyInUseAuthException() : super(_message);
  static const String _message = "email already in use!";
}
