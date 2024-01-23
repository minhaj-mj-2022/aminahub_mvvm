import 'package:aminahub/screen/user_account_screen/components/acc_menu.dart';
import 'package:aminahub/screen/user_account_screen/components/help_center.dart';
import 'package:aminahub/screen/user_account_screen/components/my_account.dart';
import 'package:aminahub/screen/user_account_screen/components/my_ads.dart';
import 'package:aminahub/utils/btm_nav_bar.dart';
import 'package:aminahub/utils/enums.dart';
import 'package:flutter/material.dart';

class UserAccountScreen extends StatefulWidget {
  static String routeName = '/UserAccountScreen';
  const UserAccountScreen({super.key});

  @override
  State<UserAccountScreen> createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(children: [
        ProfileMenu(
          text: "My Account",
          icon: "assets/icons/User Icon.svg",
          press: () {
            Navigator.pushNamed(context, UserAccountInfo.routeName);
          },
        ),
        ProfileMenu(
          text: "Notifications",
          icon: "assets/icons/Bell.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "Upload Ads",
          icon: "assets/icons/upload.svg",
          press: () =>
              {Navigator.pushNamed(context, UserUploadedAds.routeName)},
        ),
        ProfileMenu(
          text: "My ads",
          icon: "assets/icons/my_ads.svg",
          press: () =>
              {Navigator.pushNamed(context, UserUploadedAds.routeName)},
        ),
        ProfileMenu(
          text: "Help Center",
          icon: "assets/icons/Question mark.svg",
          press: () => {Navigator.pushNamed(context, HelpCenter.routeName)},
        ),
        ProfileMenu(
          text: "Log Out",
          icon: "assets/icons/Log out.svg",
          press: () {
            //_signOut(context);
          },
        )
      ]),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
