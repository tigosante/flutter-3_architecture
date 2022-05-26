import 'package:flutter_architecture/ui/routes/router.gr.dart';
import 'package:flutter_architecture/ui/routes/router_observers.dart';
import 'package:flutter/material.dart';

class ApplicationRouter extends ApplicationRouterConcrete {
  factory ApplicationRouter.instance() => _singleton;
  ApplicationRouter._internal();

  static final ApplicationRouter _singleton = ApplicationRouter._internal();
  static ApplicationRouterObservers? _routerObservers;

  BuildContext get currentContext => _singleton.navigatorKey.currentContext!;
  ApplicationRouterObservers get routerObservers =>
      _routerObservers ?? (_routerObservers = ApplicationRouterObserversConcrete());
}
