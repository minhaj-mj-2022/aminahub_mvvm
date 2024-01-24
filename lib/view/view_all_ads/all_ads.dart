import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/utils/category_filter.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view_model/ads_view_mdl.dart';
import 'package:aminahub/widgets/ads_grid_view.dart';
import 'package:flutter/material.dart';

class ViewAllAdsScreen extends StatefulWidget {
  final String routeName = '/ViewAllAdsScreen';

  const ViewAllAdsScreen({super.key, r});

  @override
  State<ViewAllAdsScreen> createState() => _ViewAllAdsScreenState();
}

class _ViewAllAdsScreenState extends State<ViewAllAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("View Ads"),
        ),
        body: Column(
          children: [
            const CategoryFilter(),
            SizedBox(
              height: getSrnHeight(5),
            ),
            Expanded(
                child: FutureBuilder<List<AdsModel>>(
              future: AdsModelService().getAdsModels(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text("Loading...");
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return GridViweCard(
                    cardHeight: getSrnHeight(25),
                    cardWidth: getSrnWidth(60),
                    imgAspectRatio: 10 / 16,
                    ads: snapshot.data!,
                  );
                }
              },
            ))
          ],
        ));
  }
}
