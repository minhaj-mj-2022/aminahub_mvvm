import 'package:aminahub/view/home_screen/components/ads_category.dart';
import 'package:aminahub/view/home_screen/components/ads_section.dart';
import 'package:aminahub/view/home_screen/components/floating_btn.dart';
import 'package:aminahub/view/home_screen/components/search.dart';
import 'package:aminahub/view/home_screen/components/section_title.dart';
import 'package:aminahub/view/home_screen/components/user_location.dart';
import 'package:aminahub/utils/app_bar.dart';
import 'package:aminahub/utils/btm_nav_bar.dart';
import 'package:aminahub/utils/buttons.dart';
import 'package:aminahub/utils/enums.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view/view_all_ads/all_ads.dart';
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
            UserLocation(),
            SizedBox(
              height: getSrnHeight(6),
            ),
            const SearchField(),
            SizedBox(
              height: getSrnHeight(10),
            ),
            AdsCategory(onCategorySelected: (category) {}),
            SizedBox(
              height: getSrnHeight(10),
            ),
            SpecialSectionTitle(
              press: () {},
              title: 'Special For you',
            ),
            AdsSections(
              cardHeight: getSrnHeight(58),
              cardWidth: getSrnWidth(1500),
              imgAspectRatio: 10 / 6,
              userCategorySelected: 'All Ads',
              userSelectedCategoryOption: 'Latest',
            ),
            SizedBox(
              height: getSrnHeight(5),
            ),
            SectionTitle(
              press: () {},
              title: 'IT Training',
            ),
            AdsSections(
              cardHeight: getSrnHeight(58),
              cardWidth: getSrnWidth(1500),
              imgAspectRatio: 10 / 6,
              userCategorySelected: 'IT Training',
              userSelectedCategoryOption: 'Latest',
            ),
            SizedBox(
              height: getSrnHeight(5),
            ),
            SectionTitle(
              press: () {},
              title: 'Property',
            ),
            AdsSections(
              cardHeight: getSrnHeight(58),
              cardWidth: getSrnWidth(1500),
              imgAspectRatio: 10 / 6,
              userCategorySelected: 'Property',
              userSelectedCategoryOption: 'Latest',
            ),
            SizedBox(
              height: getSrnHeight(5),
            ),
            SectionTitle(
              press: () {},
              title: 'Events',
            ),
            AdsSections(
              cardHeight: getSrnHeight(58),
              cardWidth: getSrnWidth(1500),
              imgAspectRatio: 10 / 6,
              userCategorySelected: 'Events',
              userSelectedCategoryOption: 'Latest',
            ),
            SizedBox(
              height: getSrnHeight(5),
            ),
            SectionTitle(
              press: () {},
              title: 'Home Services',
            ),
            AdsSections(
              cardHeight: getSrnHeight(58),
              cardWidth: getSrnWidth(1500),
              imgAspectRatio: 10 / 6,
              userCategorySelected: ' Home Services',
              userSelectedCategoryOption: 'Latest',
            ),
            SizedBox(
              height: getSrnHeight(5),
            ),
            PrimaryBtn(
                btnText: "View all Ads",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewAllAdsScreen(
                        selectedCategory: 'All Ads',
                        selectedTimeFilter: 'Latest',
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: getSrnHeight(10),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
      floatingActionButton: const FloatingBtn(),
    );
  }
}
