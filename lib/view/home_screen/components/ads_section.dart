import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view_model/ads_view_mdl.dart';
import 'package:aminahub/widgets/ads_list_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdsSections extends StatefulWidget {
  final double cardHeight, cardWidth, imgAspectRatio;
  String userCategorySelected, userSelectedCategoryOption;
  AdsSections({
    Key? key,
    required this.cardHeight,
    required this.cardWidth,
    required this.imgAspectRatio,
    required this.userCategorySelected,
    required this.userSelectedCategoryOption,
  }) : super(key: key);

  @override
  State<AdsSections> createState() => _AdsSectionsState();
}

class _AdsSectionsState extends State<AdsSections> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AdsModel>>(
      future: AdsModelService().getAdsModels(
          widget.userCategorySelected, widget.userSelectedCategoryOption),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return ListViweCard(
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
