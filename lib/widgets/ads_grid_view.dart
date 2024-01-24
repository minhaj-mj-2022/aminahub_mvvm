import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/view/ad_detailed_scrn.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/widgets/ads_card.dart';
import 'package:flutter/material.dart';

class GridViweCard extends StatefulWidget {
  final List<AdsModel> ads;
  final double cardWidth, cardHeight, imgAspectRatio;

  const GridViweCard(
      {super.key,
      required this.ads,
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
        itemCount: widget.ads.length,
        itemBuilder: (BuildContext context, int index) {
          final ad = widget.ads[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdDetailsScreen(
                    imageUrl: ad.images[0],
                    title: ad.title,
                    adsCategory: "category",
                    locationState: ad.locationState,
                    timePosted: ad.timePosted,
                    isActive: ad.isActive,
                    category: ad.category,
                    description: ad.description,
                  ),
                ),
              );
            },
            child: AdsCardView(
              cardWidth: widget.cardWidth,
              imgAspectRatio: widget.imgAspectRatio,
              leftMargin: 0,
              title: ad.title,
              id: ad.id,
              locationState: ad.locationState,
              description: ad.description,
              contactInfo: ad.contactInfo,
              price: ad.price,
              isActive: ad.isActive,
              imageUrl: ad.images[0],
            ),
          );
        },
      ),
    );
  }
}
