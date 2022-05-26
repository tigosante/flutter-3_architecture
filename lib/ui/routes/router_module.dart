import 'package:flutter_architecture/ui/routes/application_router.gr.dart';
import 'package:flutter_architecture/ui/routes/router_observers.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApplicationRouter extends ApplicationRouterConcrete {
  ApplicationRouter({
    required ApplicationRouterObservers applicationRouterObservers,
  }) : _applicationRouterObservers = applicationRouterObservers;

  final ApplicationRouterObservers _applicationRouterObservers;

  BuildContext get currentContext => super.navigatorKey.currentContext!;
  ApplicationRouterObservers get routerObservers => _applicationRouterObservers;
}
