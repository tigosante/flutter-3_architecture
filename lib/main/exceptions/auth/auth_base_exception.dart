import 'package:flutter_architecture/main/exceptions/base_exception.dart';

abstract class AuthBaseException extends BaseException {
  AuthBaseException(String message) : super(message);
}
