import 'package:flutter/material.dart';

class UserUploadedAds extends StatefulWidget {
  static String routeName = '/UserUploadedAds';
  const UserUploadedAds({super.key});

  @override
  State<UserUploadedAds> createState() => _UserUploadedAdsState();
}

class _UserUploadedAdsState extends State<UserUploadedAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Ads"),
      ),
    );
  }
}
