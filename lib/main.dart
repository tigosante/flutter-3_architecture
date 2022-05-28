import 'dart:async';

import 'package:flutter_architecture/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/routes/router_module.dart';

Future<void> main() async {
  runApp(Application(applicationRouter: ApplicationRouterModule.instance));
}
