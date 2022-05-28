import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/routes/application_router.gr.dart';
import 'package:flutter_architecture/ui/routes/router_observers.dart';
import 'package:flutter_architecture/ui/screens/home/home_screen.dart';
import 'package:flutter_architecture/ui/screens/splash/splash_screen.dart';

// TODO: corrigir rotas para web
@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      initial: true,
      page: SplashScreen,
      children: [
        AutoRoute(
          path: "home",
          page: HomeScreen,
        ),
      ],
    ),
  ],
)
class $ApplicationRouterConcrete {}

class ApplicationRouter extends ApplicationRouterConcrete {
  ApplicationRouter({
    required ApplicationRouterObservers applicationRouterObservers,
  }) : _applicationRouterObservers = applicationRouterObservers;

  final ApplicationRouterObservers _applicationRouterObservers;

  BuildContext get currentContext => super.navigatorKey.currentContext!;
  ApplicationRouterObservers get routerObservers => _applicationRouterObservers;
}
