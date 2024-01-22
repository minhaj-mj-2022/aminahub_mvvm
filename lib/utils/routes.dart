import 'package:aminahub/screen/user_bookmarks_screen/bookmark_scrn.dart';
import 'package:aminahub/screen/view_all_ads/all_ads.dart';
import 'package:aminahub/screen/home_screen/home_scrn.dart';
import 'package:aminahub/screen/splash_scrn.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/HomeScreen';
  static const String viewAllAdsScreen = '/ViewAllAdsScreen';
  static const String viewBookmarkScreen = '/ViewBookmarkScreen';

  static WidgetBuilder getRouteBuilder(String routeName) {
    switch (routeName) {
      case splashScreen:
        return (_) => const SplashScreen();
      case homeScreen:
        return (_) => const HomeScreen();
      case viewAllAdsScreen:
        return (_) => const ViewAllAdsScreen();
      case viewBookmarkScreen:
        return (_) => const ViewBookmarkScreen();
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
    viewAllAdsScreen: getRouteBuilder(viewAllAdsScreen),
    viewBookmarkScreen: getRouteBuilder(viewBookmarkScreen),
  };
}
