import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/widgets/list_view.dart';
import 'package:flutter/material.dart';

class AdsCardSection extends StatefulWidget {
  final double cardHeight, cardWidth, imgAspectRatio;
  const AdsCardSection(
      {super.key,
      required this.cardHeight,
      required this.cardWidth,
      required this.imgAspectRatio});

  @override
  State<AdsCardSection> createState() => _AdsCardSectionState();
}

class _AdsCardSectionState extends State<AdsCardSection> {
  @override
  Widget build(BuildContext context) {
    return ListViweCard(
      demoAdsView: demoAds,
      cardHeight: widget.cardHeight,
      cardWidth: widget.cardWidth,
      imgAspectRatio: widget.imgAspectRatio,
    );
  }
}
