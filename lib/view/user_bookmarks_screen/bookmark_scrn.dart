import 'package:aminahub/utils/btm_nav_bar.dart';
import 'package:aminahub/utils/category_filter.dart';
import 'package:aminahub/utils/enums.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class ViewBookmarkScreen extends StatefulWidget {
  static const String routeName = '/ViewBookmarkScreen';

  const ViewBookmarkScreen({super.key});

  @override
  State<ViewBookmarkScreen> createState() => _ViewBookmarkScreenState();
}

class _ViewBookmarkScreenState extends State<ViewBookmarkScreen> {
  String userCategorySelected = 'IT Training';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Bookmarked"),
      ),
      body: Column(
        children: [
          // CategoryFilter(
          //   onCategoryChanged: (selectedCategory) {
          //     setState(() {
          //       //userCategorySelected = selectedCategory;
          //     });
          //   },
          // ),
          SizedBox(
            height: getSrnHeight(5),
          ),
          // Expanded(
          //   child: AdsCardSectionGridView(
          //     cardHeight: getSrnHeight(25),
          //     cardWidth: getSrnWidth(60),
          //     imgAspectRatio: 10 / 16,
          //     //here
          //     getDemoAds: [],
          //   ),
          // )
        ],
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
