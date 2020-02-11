import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {bool replace = false}) {
    if (!replace) return _pushRoute(routeName);
    return _pushReplaceRoute(routeName);
  }

  Future<dynamic> _pushRoute(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  Future<dynamic> _pushReplaceRoute(String routeName) {
    return navigatorKey.currentState.pushReplacementNamed(routeName);
  }
}