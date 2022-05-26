import 'package:flutter_architecture/main/exceptions/base_exception.dart';

class NotSavedException<T> extends BaseException {
  NotSavedException() : super("$T not saved");
}
