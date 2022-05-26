import 'dart:async';

import 'package:flutter_architecture/application.dart';
import 'package:flutter_architecture/main/dependecy_injection/dependency_injection.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjaction.startModules();
  runApp(Application(applicationRouter: DependencyInjaction.get()));
}
