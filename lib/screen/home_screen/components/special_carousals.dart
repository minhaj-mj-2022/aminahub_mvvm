import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/widgets/list_view.dart';
import 'package:flutter/material.dart';

class SpecialSection extends StatefulWidget {
  const SpecialSection({super.key});

  @override
  State<SpecialSection> createState() => _SpecialSectionState();
}

class _SpecialSectionState extends State<SpecialSection> {
  @override
  Widget build(BuildContext context) {
    return ListViweCard(
      demoAdsView: demoAds,
    );
  }
}
