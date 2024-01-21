import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/widgets/list_view.dart';
import 'package:flutter/material.dart';

class AdsSections extends StatefulWidget {
  final double cardHeight, cardWidth, imgAspectRatio;
  const AdsSections(
      {super.key,
      required this.cardHeight,
      required this.cardWidth,
      required this.imgAspectRatio});

  @override
  State<AdsSections> createState() => _AdsSectionsState();
}

class _AdsSectionsState extends State<AdsSections> {
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
