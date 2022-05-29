import 'package:emed/pages/auth/view/auth_view.dart';
import 'package:emed/pages/home/view/main/home_view.dart';
import 'package:emed/pages/home/view/pages/booking/bookingpage.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final MyRoutes _instance = MyRoutes.init();
  static MyRoutes get instance => _instance;
  MyRoutes.init();

  Route? ongenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/auth':
        return pageReturner(const AuthView());
      case '/home':
        return pageReturner(const HomeView());
      case '/booking':
        return pageReturner(const BookingPage());
    }
    return null;
  }

  pageReturner(Widget page) => MaterialPageRoute(builder: (_) => page);
}
