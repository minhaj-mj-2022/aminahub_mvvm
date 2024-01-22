import 'package:aminahub/screen/ad_detailed_scrn.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/widgets/ads_card.dart';
import 'package:flutter/material.dart';

class GridViweCard extends StatefulWidget {
  final List<Map<String, dynamic>> demoAdsView;
  final double cardWidth, cardHeight, imgAspectRatio;

  const GridViweCard(
      {super.key,
      required this.demoAdsView,
      required this.cardWidth,
      required this.imgAspectRatio,
      required this.cardHeight});

  @override
  State<GridViweCard> createState() => _GridViweCardState();
}

class _GridViweCardState extends State<GridViweCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getSrnWidth(20)),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: getSrnHeight(0.228),
          crossAxisSpacing: getSrnWidth(18),
          mainAxisSpacing: 0,
        ),
        itemCount: widget.demoAdsView.length,
        itemBuilder: (BuildContext context, int index) {
          final ad = widget.demoAdsView[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdDetailsScreen(
                    imageUrl: ad['imageUrl'],
                    title: ad['title'],
                    adsCategory: ad['adCategory'],
                  ),
                ),
              );
            },
            child: AdsCardView(
              title: ad['title'],
              imageUrl: ad['imageUrl'],
              cardWidth: widget.cardWidth,
              imgAspectRatio: widget.imgAspectRatio,
              leftMargin: 0,
            ),
          );
        },
      ),
    );
  }
}
