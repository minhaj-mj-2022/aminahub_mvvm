import 'package:aminahub/screen/view_all_ads/comonents/ads_card_section.dart';
import 'package:aminahub/screen/view_all_ads/comonents/category_filter.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class ViewAllAdsScreen extends StatefulWidget {
  final String routeName = '/ViewAllAdsScreen';

  const ViewAllAdsScreen({super.key, r});

  @override
  State<ViewAllAdsScreen> createState() => _ViewAllAdsScreenState();
}

class _ViewAllAdsScreenState extends State<ViewAllAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("View Ads"),
        ),
        body: Column(
          children: [
            const CategoryFilter(),
            SizedBox(
              height: getSrnHeight(5),
            ),
            Expanded(
              child: AdsCardSectionGridView(
                cardHeight: getSrnHeight(25),
                cardWidth: getSrnWidth(60),
                imgAspectRatio: 10 / 16,
              ),
            )
          ],
        ));
  }
}
