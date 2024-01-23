import 'package:aminahub/screen/home_screen/home_scrn.dart';
import 'package:aminahub/screen/user_account_screen/user_acc_scrn.dart';
import 'package:aminahub/screen/user_bookmarks_screen/bookmark_scrn.dart';
import 'package:aminahub/utils/enums.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSrnHeight(29),
      decoration: const BoxDecoration(
        color: AppColors.textWhite,
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? AppColors.navBtnActiveColor
                      : AppColors.navBtnInactiveColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/bookmark.svg",
                  color: MenuState.favourite == selectedMenu
                      ? AppColors.navBtnActiveColor
                      : AppColors.navBtnInactiveColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ViewBookmarkScreen.routeName);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? AppColors.navBtnActiveColor
                      : AppColors.navBtnInactiveColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, UserAccountScreen.routeName);
                },
              ),
            ],
          )),
    );
  }
}
