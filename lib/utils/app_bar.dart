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
        height: getSrnHeight(45),
        width: getOrgSrnWidth(),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: AppColors.splashBackground),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getSrnHeight(22.5),
            ),
            Image.asset(
              ImagesModel.splashLogo,
              height: getSrnWidth(80),
              width: getSrnHeight(80),
            ),
            SizedBox(
              height: getSrnHeight(3),
            ),
          ],
        ));
  }
}
