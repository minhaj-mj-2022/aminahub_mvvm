// ads_category.dart
import 'package:aminahub/model/images_mdl.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view/view_all_ads/all_ads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AdsCategory extends StatelessWidget {
  final Function(String) onCategorySelected;

  const AdsCategory({Key? key, required this.onCategorySelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildIcon(ImagesModel.itTraining, 'IT Training', context),
            _buildIcon(ImagesModel.homeServices, 'Home Services', context),
            _buildIcon(ImagesModel.event, 'Events', context),
            _buildIcon(ImagesModel.buySell, 'Buy & Sell', context),
          ],
        ),
        SizedBox(height: getSrnHeight(8)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildIcon(ImagesModel.property, 'Property', context),
            _buildIcon(ImagesModel.rent, 'Rentals', context),
            _buildIcon(ImagesModel.roommates, 'Roommates', context),
            _buildIcon(ImagesModel.lawyer, 'Lawyer', context),
          ],
        ),
      ],
    );
  }

  Widget _buildIcon(String imagePath, String label, BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ViewAllAdsScreen(
                  selectedCategory: label,
                  selectedTimeFilter: 'Latest',
                ),
              ),
            );
          },
          child: SvgPicture.asset(
            imagePath,
            height: getSrnHeight(22),
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
        ),
        SizedBox(height: getSrnHeight(4)),
        Text(
          label,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
