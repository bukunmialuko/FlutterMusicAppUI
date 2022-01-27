// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/splashscreen/splash_screen.dart';

import 'fade_route.dart';

const String splash = '/splash';
const String login = '/login';
const String home = '/home';

var routes = (RouteSettings settings) {
  switch (settings.name) {
    case splash:
      return FadeRoute(
        page: const SplashScreen(),
      );
  }
};
