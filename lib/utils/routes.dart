import 'package:aminahub/screen/home_screen/home_scrn.dart';
import 'package:aminahub/screen/splash_scrn.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/HomeScreen';

  static WidgetBuilder getRouteBuilder(String routeName) {
    switch (routeName) {
      case splashScreen:
        return (_) => const SplashScreen();
      case homeScreen:
        return (_) => const HomeScreen();
      default:
        return (_) {
          return Container(
            color: Colors.red,
            child: const Center(
              child: Text("Error: Unknown Route"),
            ),
          );
        };
    }
  }

  static final Map<String, WidgetBuilder> routes = {
    splashScreen: getRouteBuilder(splashScreen),
    homeScreen: getRouteBuilder(homeScreen),
  };
}
