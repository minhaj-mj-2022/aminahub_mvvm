import 'package:aminahub/screen/home_screen/components/ads_category.dart';
import 'package:aminahub/screen/home_screen/components/search.dart';
import 'package:aminahub/screen/home_screen/components/user_location.dart';
import 'package:aminahub/utils/app_bar.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/HomeScreen"; // Ensure consistency
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            const HomeScreenAppBars(),
            SizedBox(
              height: getSrnHeight(2),
            ),
            const UserLocation(),
            SizedBox(
              height: getSrnHeight(10),
            ),
            AdsCategory(),
            SizedBox(
              height: getSrnHeight(12),
            ),
            SearchField(),
          ],
        ),
      ),
    );
  }
}
