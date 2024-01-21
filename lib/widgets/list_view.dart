import 'package:aminahub/screen/ad_detailed_scrn.dart';
import 'package:flutter/material.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/widgets/ads_card.dart';

class ListViweCard extends StatefulWidget {
  final List<Map<String, dynamic>> demoAdsView;
  final double cardHeight, cardWidth, imgAspectRatio;

  const ListViweCard({
    Key? key,
    required this.demoAdsView,
    required this.cardHeight,
    required this.cardWidth,
    required this.imgAspectRatio,
  }) : super(key: key);

  @override
  State<ListViweCard> createState() => _ListViweCardState();
}

class _ListViweCardState extends State<ListViweCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getOrgSrnWidth(),
      height: getSrnHeight(widget.cardHeight),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.demoAdsView.length,
        itemBuilder: (context, index) {
          final ad = widget.demoAdsView[index];
          return GestureDetector(
            onTap: () {
              // Navigate to the ad details screen when the card is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdDetailsScreen(
                    title: ad['title'],
                    imageUrl: ad['imageUrl'],
                  ),
                ),
              );
            },
            child: AdsCardView(
              title: ad['title'],
              imageUrl: ad['imageUrl'],
              cardWidth: widget.cardWidth,
              imgAspectRatio: widget.imgAspectRatio,
            ),
          );
        },
      ),
    );
  }
}
