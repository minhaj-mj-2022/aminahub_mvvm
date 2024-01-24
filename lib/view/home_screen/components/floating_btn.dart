import 'package:aminahub/view/home_screen/components/select_location.dart';
import 'package:aminahub/utils/theme.dart';
import 'package:flutter/material.dart';

class FloatingBtn extends StatelessWidget {
  const FloatingBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.navBtnActiveColor,
      onPressed: () {
        Navigator.pushNamed(context, SelectLocation.routeName);
      },
      child: const Icon(
        Icons.location_on,
        color: AppColors.textWhite,
      ),
    );
  }
}
