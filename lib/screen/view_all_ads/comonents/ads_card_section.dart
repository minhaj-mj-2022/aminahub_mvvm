import 'package:aminahub/widgets/ads_grid_view.dart';
import 'package:flutter/material.dart';

class AdsCardSectionGridView extends StatefulWidget {
  final List<Map<String, dynamic>> getDemoAds;
  final double cardHeight, cardWidth, imgAspectRatio;
  const AdsCardSectionGridView(
      {super.key,
      required this.cardHeight,
      required this.cardWidth,
      required this.imgAspectRatio,
      required this.getDemoAds});

  @override
  State<AdsCardSectionGridView> createState() => _AdsCardSectionGridViewState();
}

class _AdsCardSectionGridViewState extends State<AdsCardSectionGridView> {
  @override
  Widget build(BuildContext context) {
    return GridViweCard(
      demoAdsView: widget.getDemoAds,
      cardHeight: widget.cardHeight,
      cardWidth: widget.cardWidth,
      imgAspectRatio: widget.imgAspectRatio,
    );
  }
}
