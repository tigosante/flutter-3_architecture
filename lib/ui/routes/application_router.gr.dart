// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_architecture/ui/screens/home/home_screen.dart' as _i2;
import 'package:flutter_architecture/ui/screens/splash/splash_screen.dart'
    as _i1;

class ApplicationRouterConcrete extends _i3.RootStackRouter {
  ApplicationRouterConcrete([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SplashScreenRouteArgs>(
          orElse: () => const SplashScreenRouteArgs());
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.SplashScreen(key: args.key));
    },
    HomeScreenRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i3.RouteConfig(HomeScreenRoute.name, path: 'home')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i3.PageRouteInfo<SplashScreenRouteArgs> {
  SplashScreenRoute({_i4.Key? key})
      : super(SplashScreenRoute.name,
            path: '/', args: SplashScreenRouteArgs(key: key));

  static const String name = 'SplashScreenRoute';
}

class SplashScreenRouteArgs {
  const SplashScreenRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'SplashScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i3.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: 'home');

  static const String name = 'HomeScreenRoute';
}
