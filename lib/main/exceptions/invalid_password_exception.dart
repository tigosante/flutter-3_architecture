import 'package:flutter_architecture/main/exceptions/base_exception.dart';

class InvalidPasswordException extends BaseException {
  InvalidPasswordException() : super(_message);

  static const String _message = "Invalid password!";
}
