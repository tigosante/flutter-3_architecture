import 'package:auto_route/annotations.dart';
import 'package:flutter_architecture/ui/screens/home/home_screen.dart';
import 'package:flutter_architecture/ui/screens/splash/splash_screen.dart';

// TODO: corrigir rotas para web
@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      initial: true,
      page: SplashScreen,
    ),
    AutoRoute(
      path: "home",
      page: HomeScreen,
    ),
  ],
)
class $ApplicationRouterConcrete {}
