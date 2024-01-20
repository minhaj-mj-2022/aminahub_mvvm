import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/widgets/ads_card.dart';
import 'package:flutter/material.dart';

class ListViweCard extends StatefulWidget {
  final List<Map<String, dynamic>> demoAdsView;
  const ListViweCard({super.key, required this.demoAdsView});

  @override
  State<ListViweCard> createState() => _ListViweCardState();
}

class _ListViweCardState extends State<ListViweCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getOrgSrnWidth(),
      height: getSrnHeight(130),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.demoAdsView.length,
        itemBuilder: (context, index) {
          final ad = widget.demoAdsView[index];
          return SpecialAdsCard(title: ad['title'], imageUrl: ad['imageUrl']);
        },
      ),
    );
  }
}
