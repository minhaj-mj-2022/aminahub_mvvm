import 'package:aminahub/screen/home_screen/components/ads_category.dart';
import 'package:aminahub/screen/home_screen/components/search.dart';
import 'package:aminahub/screen/home_screen/components/section_title.dart';
import 'package:aminahub/screen/home_screen/components/Ads_card_section.dart';
import 'package:aminahub/screen/home_screen/components/user_location.dart';
import 'package:aminahub/utils/app_bar.dart';
import 'package:aminahub/utils/buttons.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/HomeScreen";
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
              height: getSrnHeight(6),
            ),
            const SearchField(),
            SizedBox(
              height: getSrnHeight(12),
            ),
            const AdsCategory(),
            SizedBox(
              height: getSrnHeight(10),
            ),
            SectionTitle(
              press: () {},
              title: 'Best Deals for you',
            ),
            AdsCardSection(
              cardHeight: getSrnHeight(58),
              cardWidth: getSrnWidth(1500),
              imgAspectRatio: 10 / 6,
            ),
            SizedBox(
              height: getSrnHeight(10),
            ),
            SectionTitle(
              press: () {},
              title: 'Special For you',
            ),
            AdsCardSection(
              cardHeight: getSrnHeight(58),
              cardWidth: getSrnWidth(1500),
              imgAspectRatio: 10 / 6,
            ),
            SectionTitle(
              press: () {},
              title: 'IT Training',
            ),
            AdsCardSection(
              cardHeight: getSrnHeight(72),
              cardWidth: getSrnWidth(800),
              imgAspectRatio: 10 / 16,
            ),
            SizedBox(
              height: getSrnHeight(10),
            ),
            PrimaryBtn(btnText: "View all Ads", onPressed: () {}),
            SizedBox(
              height: getSrnHeight(10),
            ),
          ],
        ),
      ),
    );
  }
}
