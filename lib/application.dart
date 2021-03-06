import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/layout/application_theme.dart';
import 'package:flutter_architecture/ui/routes/application_router.dart';
import 'package:flutter/foundation.dart' show kReleaseMode, kDebugMode;

class Application extends StatelessWidget {
  const Application({
    Key? key,
    required ApplicationRouter applicationRouter,
  })  : _applicationRouter = applicationRouter,
        super(key: key);

  final ApplicationRouter _applicationRouter;

  String get _title => kReleaseMode ? "Flutter Architecture" : "Flutter Architecture - Debug";

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: _title,
      theme: ApplicationTheme.themeData,
      debugShowCheckedModeBanner: kDebugMode,
      routeInformationParser: _applicationRouter.defaultRouteParser(),
      routerDelegate: _applicationRouter.delegate(navigatorObservers: () => [_applicationRouter.routerObservers]),
    );
  }
}
