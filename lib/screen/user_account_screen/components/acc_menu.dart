import 'package:aminahub/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    this.press,
  });

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.btnBackgroundColor,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: AppColors.navBtnInactiveColor,
              width: 22,
            ),
            const SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: const TextStyle(fontSize: 17),
            )),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
