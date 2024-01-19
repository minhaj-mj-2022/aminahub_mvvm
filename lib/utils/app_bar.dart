import 'package:aminahub/model/images_mdl.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/utils/theme.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBars extends StatefulWidget {
  const HomeScreenAppBars({super.key});

  @override
  State<HomeScreenAppBars> createState() => _AppBarsState();
}

class _AppBarsState extends State<HomeScreenAppBars> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getSrnHeight(62),
        width: getOrgSrnWidth(),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            color: AppColors.splashBackground),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getSrnHeight(20),
            ),
            Image.asset(
              ImagesModel.splashLogo,
              height: getSrnWidth(100),
              width: getSrnHeight(100),
            ),
            SizedBox(
              height: getSrnHeight(3),
            ),
            const Text(
              "Dhaka, Bangladesh",
              style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
