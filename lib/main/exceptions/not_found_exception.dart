import 'package:flutter_architecture/main/exceptions/base_exception.dart';

class NotFoundException<T> extends BaseException {
  NotFoundException() : super("$T not found");
}
