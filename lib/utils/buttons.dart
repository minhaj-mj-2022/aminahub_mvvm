import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/utils/theme.dart';
import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;

  const PrimaryBtn({
    super.key,
    required this.btnText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getSrnWidth(680),
      height: getSrnHeight(25),
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: AppColors.btnBackgroundColor),
          onPressed: onPressed,
          child: Text(
            btnText,
            style: const TextStyle(fontSize: 20, color: AppColors.textWhite),
          )),
    );
  }
}

class SecondaryBtn extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;
  final IconData iconData;

  const SecondaryBtn({
    super.key,
    required this.btnText,
    required this.onPressed,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          iconData,
          color: AppColors.textWhite,
        ),
        label: Text(
          btnText,
          style: const TextStyle(color: AppColors.textWhite, fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.btnBackgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
