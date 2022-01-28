// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/splashscreen/splash_screen.dart';

import 'fade_route.dart';

class ScreenRouter {
  static const String root = '/';
  static const String login = '/login';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return FadeRoute(
          page: const SplashScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
              body:
                  Center(child: Text('No route defined for ${settings.name}'))),
        );
    }
  }
}
