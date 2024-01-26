// view_all_ads.dart
import 'package:aminahub/model/ads_mdl.dart';
import 'package:aminahub/utils/constant.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view_model/ads_view_mdl.dart';
import 'package:aminahub/widgets/ads_grid_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewAllAdsScreen extends StatefulWidget {
  static String routeName = '/ViewAllAdsScreen';

  String selectedCategory, selectedTimeFilter;

  ViewAllAdsScreen(
      {Key? key,
      required this.selectedCategory,
      required this.selectedTimeFilter})
      : super(key: key);

  @override
  State<ViewAllAdsScreen> createState() =>
      _ViewAllAdsScreenState(selectedCategory); // Updated
}

class _ViewAllAdsScreenState extends State<ViewAllAdsScreen> {
  _ViewAllAdsScreenState(String selectedCategory);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Ads"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                //category
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: widget.selectedCategory,
                    onChanged: (String? newValue) {
                      setState(() {
                        widget.selectedCategory = newValue!;
                      });
                    },
                    items: constAdSategories
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 18),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 16),
                //time
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: widget.selectedTimeFilter,
                    onChanged: (String? newValue) {
                      setState(() {
                        widget.selectedTimeFilter = newValue!;
                      });
                    },
                    items: constFilterOptions
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 18),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getSrnHeight(5),
          ),
          Expanded(
            child: FutureBuilder<List<AdsModel>>(
              future: AdsModelService().getAdsModels(
                  widget.selectedCategory, widget.selectedCategory),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
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
            ),
          ),
        ],
      ),
    );
  }
}
