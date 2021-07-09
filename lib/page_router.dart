import 'package:car_rent/pages/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageRouter {
  static const String root = '/';
  static const String auth = '/auth';

  static const String verification = '/verification';
  static const String home = '/home';
  static const String rentCar = '/rent_car';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    var path = settings.name;
    // var args = settings.arguments;

    switch (path) {
      case root:
        return buildRoute(RootPage());
      case auth:
        return buildRoute(RegistrationPage());
      case verification:
        return buildRoute(Verification());
      case home:
        return buildRoute(HomePage());
      case rentCar:
        return buildRoute(RentCarPage());
      default:
    }
  }

  static buildRoute(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }
}
