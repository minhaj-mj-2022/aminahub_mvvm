import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/widgets/ads_grid_view.dart';
import 'package:flutter/material.dart';

class AdsCardSectionGridView extends StatefulWidget {
  final double cardHeight, cardWidth, imgAspectRatio;
  const AdsCardSectionGridView(
      {super.key,
      required this.cardHeight,
      required this.cardWidth,
      required this.imgAspectRatio});

  @override
  State<AdsCardSectionGridView> createState() => _AdsCardSectionGridViewState();
}

class _AdsCardSectionGridViewState extends State<AdsCardSectionGridView> {
  @override
  Widget build(BuildContext context) {
    return GridViweCard(
      demoAdsView: demoAds,
      cardHeight: widget.cardHeight,
      cardWidth: widget.cardWidth,
      imgAspectRatio: widget.imgAspectRatio,
    );
  }
}
