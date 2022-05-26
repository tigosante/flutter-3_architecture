import 'package:flutter_architecture/ui/routes/application_router.gr.dart';
import 'package:flutter_architecture/ui/routes/router_module.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SplashController {
  SplashController({
    required ApplicationRouter router,
  }) : _router = router;

  final ApplicationRouter _router;

  Future<void> start() async =>
      await Future.delayed(const Duration(seconds: 2), () => _router.push(const HomeScreenRoute()));
}
