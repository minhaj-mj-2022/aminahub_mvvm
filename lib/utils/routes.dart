import 'package:aminahub/view/home_screen/components/select_location.dart';
import 'package:aminahub/view/sign_in_screen/sign_in_scrn.dart';
import 'package:aminahub/view/user_account_screen/components/help_center.dart';
import 'package:aminahub/view/user_account_screen/components/my_account.dart';
import 'package:aminahub/view/user_account_screen/components/my_ads.dart';
import 'package:aminahub/view/user_account_screen/components/upload.dart';
import 'package:aminahub/view/user_account_screen/user_acc_scrn.dart';
import 'package:aminahub/view/user_bookmarks_screen/bookmark_scrn.dart';
import 'package:aminahub/view/view_all_ads/all_ads.dart';
import 'package:aminahub/view/home_screen/home_scrn.dart';
import 'package:aminahub/view/splash_scrn.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/HomeScreen';
  static const String viewAllAdsScreen = '/ViewAllAdsScreen';
  static const String viewBookmarkScreen = '/ViewBookmarkScreen';
  static const String userAccountScreen = '/UserAccountScreen';
  static const String userAccountInfo = '/UserAccountInfo';
  static const String userUploadedAds = '/UserUploadedAds';
  static const String userUploadAds = '/UserUploadAds';
  static const String helpCenter = '/HelpCenter';
  static const String selectLocation = '/SelectLocation';
  static const String signInScreen = '/SignInScreen';

  static WidgetBuilder getRouteBuilder(String routeName) {
    switch (routeName) {
      case splashScreen:
        return (_) => const SplashScreen();
      case homeScreen:
        return (_) => const HomeScreen();
      case viewAllAdsScreen:
        return (_) => ViewAllAdsScreen(
              selectedCategory: 'All Ads',
              selectedTimeFilter: 'Latest',
            );
      case viewBookmarkScreen:
        return (_) => const ViewBookmarkScreen();
      case userAccountScreen:
        return (_) => const UserAccountScreen();
      case userAccountInfo:
        return (_) => const UserAccountInfo();
      case userUploadedAds:
        return (_) => const UserUploadedAds();
      case userUploadAds:
        return (_) => const UserUploadAdsView();
      case helpCenter:
        return (_) => const HelpCenter();
      case selectLocation:
        return (_) => SelectLocation();
      case signInScreen:
        return (_) => const SignInScreen();
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
    userAccountScreen: getRouteBuilder(userAccountScreen),
    userAccountInfo: getRouteBuilder(userAccountInfo),
    userUploadedAds: getRouteBuilder(userUploadedAds),
    userUploadAds: getRouteBuilder(userUploadAds),
    helpCenter: getRouteBuilder(helpCenter),
    selectLocation: getRouteBuilder(selectLocation),
    signInScreen: getRouteBuilder(signInScreen),
  };
}
