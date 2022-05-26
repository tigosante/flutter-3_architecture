import 'package:flutter_architecture/main/exceptions/base_exception.dart';

class IncorrectEmailException extends BaseException {
  IncorrectEmailException() : super(_message);

  static const String _message = "Incorrect email!";
}
