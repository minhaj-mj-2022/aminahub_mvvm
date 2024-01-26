// import 'package:aminahub/model/ads_mdl.dart';
// import 'package:aminahub/view/ad_detailed_scrn.dart';
// import 'package:flutter/material.dart';
// import 'package:aminahub/utils/size_config.dart';
// import 'package:aminahub/widgets/ads_card.dart';
//
// class ListViweCard extends StatefulWidget {
//   final List<AdsModel> ads;
//   final double cardHeight, cardWidth, imgAspectRatio;
//
//   const ListViweCard({
//     Key? key,
//     required this.ads,
//     required this.cardHeight,
//     required this.cardWidth,
//     required this.imgAspectRatio,
//   }) : super(key: key);
//
//   @override
//   State<ListViweCard> createState() => _ListViweCardState();
// }
//
// class _ListViweCardState extends State<ListViweCard> {
//   @override
//   Widget build(BuildContext context) {
//     if (widget.ads.isEmpty) {
//       return const SizedBox.shrink();
//     }
//     return SizedBox(
//       width: getOrgSrnWidth(),
//       height: getSrnHeight(widget.cardHeight),
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: widget.ads.length,
//         itemBuilder: (context, index) {
//           final ad = widget.ads[index];
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => AdDetailsScreen(
//                     imageUrl: ad.images[0],
//                     title: ad.title,
//                     id: ad.id,
//                     adsCategory: ad.category,
//                     locationState: ad.locationState,
//                     timePosted: ad.timePosted,
//                     isActive: ad.isActive,
//                     category: ad.category,
//                     description: ad.description,
//                   ),
//                 ),
//               );
//             },
//             child: AdsCardView(
//               cardWidth: widget.cardWidth,
//               imgAspectRatio: widget.imgAspectRatio,
//               leftMargin: 25,
//               title: ad.title,
//               id: ad.id,
//               locationState: ad.locationState,
//               description: ad.description,
//               contactInfo: ad.contactInfo,
//               price: ad.price,
//               isActive: ad.isActive,
//               imageUrl: ad.images[0],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/view/ad_detailed_scrn.dart';
import 'package:flutter/material.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/widgets/ads_card.dart';
import 'package:flutter/widgets.dart';

class ListViweCard extends StatefulWidget {
  final List<AdsModel> ads;
  final double cardHeight, cardWidth, imgAspectRatio;

  const ListViweCard({
    Key? key,
    required this.ads,
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
    if (widget.ads.isEmpty) {
      return SizedBox(
        height: 25,
        width: getOrgSrnWidth(),
        child: const Center(
          child: SizedBox(
              child: Text("No Ads to Show!",
                  style: TextStyle(color: Colors.black))),
        ),
      );
    }
    return SizedBox(
      width: getOrgSrnWidth(),
      height: getSrnHeight(widget.cardHeight),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widget.ads.map((ad) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdDetailsScreen(
                      imageUrl: ad.images[0],
                      title: ad.title,
                      id: ad.id,
                      adsCategory: ad.category,
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
                leftMargin: 25,
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
          }).toList(),
        ),
        
      ),
      
    );
  }
}
