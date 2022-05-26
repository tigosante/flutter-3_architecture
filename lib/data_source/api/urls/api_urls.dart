import 'package:flutter/foundation.dart';

mixin ApiUrls {
  static const String baseUrlProd = "";
  static const String baseUrlStaging = "";

  static String get baseUrlValue => kReleaseMode ? baseUrlProd : baseUrlStaging;
  static const String baseUrlName = "BASE_URL";
}
