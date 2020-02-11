import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assets/features/home/home_page.dart';
import 'package:flutter_assets/features/home/routes.dart';
import 'package:flutter_assets/features/splash/splash_page.dart';
import 'package:flutter_assets/features/welcome/routes.dart';
import 'package:flutter_assets/features/welcome/welcome_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    if (settings.isInitialRoute)
      return MaterialPageRoute(builder: (_) => SplashPage());
    switch (settings.name) {
      case HomeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case WelcomeRoute:
        return MaterialPageRoute(builder: (_) => WelcomePage());
    }
    return null;
  }
}
