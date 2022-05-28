import 'package:flutter_architecture/ui/routes/application_router.dart';
import 'package:flutter_architecture/ui/routes/router_observers.dart';

mixin ApplicationRouterModule {
  static ApplicationRouter? _applicationRouter;

  static ApplicationRouter get instance =>
      _applicationRouter ??
      (_applicationRouter = ApplicationRouter(applicationRouterObservers: ApplicationRouterObserversConcrete()));
}
