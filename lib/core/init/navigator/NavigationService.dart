import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService.init();
  static NavigationService get instance => _instance;
  NavigationService.init();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> pushNamed(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  Future<dynamic> pushNamedReplacementNamed(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  void pop(String routeName) {
    return navigatorKey.currentState!.pop();
  }
}
