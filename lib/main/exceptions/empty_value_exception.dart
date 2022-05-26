import 'package:flutter_architecture/main/exceptions/base_exception.dart';

class EmptyValueException<T> extends BaseException {
  EmptyValueException() : super("$T is empty");
}
