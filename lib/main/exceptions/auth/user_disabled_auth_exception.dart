import 'package:flutter_architecture/main/exceptions/auth/auth_base_exception.dart';

class UserDisabledAuthException extends AuthBaseException {
  UserDisabledAuthException() : super(_message);
  static const String _message = "user disabled!";
}
