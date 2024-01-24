import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/view_model/ads_view_mdl.dart';
import 'package:aminahub/widgets/ads_grid_view.dart';
import 'package:flutter/material.dart';

class AdsCardSectionGridView extends StatefulWidget {
  final List<Map<String, dynamic>> ads;
  final double cardHeight, cardWidth, imgAspectRatio;
  const AdsCardSectionGridView(
      {super.key,
      required this.cardHeight,
      required this.cardWidth,
      required this.imgAspectRatio,
      required this.ads});

  @override
  State<AdsCardSectionGridView> createState() => _AdsCardSectionGridViewState();
}

class _AdsCardSectionGridViewState extends State<AdsCardSectionGridView> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AdsModel>>(
      future: AdsModelService().getAdsModels(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return GridViweCard(
            cardHeight: widget.cardHeight,
            cardWidth: widget.cardWidth,
            imgAspectRatio: widget.imgAspectRatio,
            ads: snapshot.data!,
          );
        }
      },
    );
  }
}
