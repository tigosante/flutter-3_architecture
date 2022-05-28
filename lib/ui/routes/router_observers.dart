import 'package:flutter/material.dart';

mixin ApplicationRouterObservers implements NavigatorObserver {
  void firebaseAnalyticsObserver(List<NavigatorObserver> observers);
}

class ApplicationRouterObserversConcrete extends NavigatorObserver implements ApplicationRouterObservers {
  final List<NavigatorObserver> _observers = [];

  @override
  void firebaseAnalyticsObserver(List<NavigatorObserver> observers) => _observers.addAll(observers);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    for (var oberver in _observers) {
      oberver.didPush(route, previousRoute);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    for (var oberver in _observers) {
      oberver.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    for (var oberver in _observers) {
      oberver.didPop(route, previousRoute);
    }
  }
}
