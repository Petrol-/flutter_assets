import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assets/features/home/home_page.dart';
import 'package:flutter_assets/features/home/routes.dart';
import 'package:flutter_assets/features/login/login_page.dart';
import 'package:flutter_assets/features/login/routes.dart';
import 'package:flutter_assets/features/main_skeleton/main_skeleton_page.dart';
import 'package:flutter_assets/features/main_skeleton/routes.dart';
import 'package:flutter_assets/features/splash/splash_page.dart';
import 'package:flutter_assets/features/welcome/routes.dart';
import 'package:flutter_assets/features/welcome/welcome_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    if (settings.isInitialRoute)
      return MaterialPageRoute(builder: (_) => SplashPage());
    switch (settings.name) {
      case (MainRoute): return MaterialPageRoute(builder: (_)=>MainSkeletonPage());
      case HomeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case WelcomeRoute:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case LoginRoute:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
    return null;
  }
}
