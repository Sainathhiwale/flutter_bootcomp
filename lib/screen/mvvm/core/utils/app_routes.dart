import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/presentation/views/home_screen.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/presentation/views/login_screen.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/presentation/views/splash_screen.dart';


class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }
}
