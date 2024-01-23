import 'package:flutter/material.dart';

class UserUploadAds extends StatefulWidget {
  static String routeName = '/UserUploadAds';
  const UserUploadAds({super.key});

  @override
  State<UserUploadAds> createState() => _UserUploadAdsState();
}

class _UserUploadAdsState extends State<UserUploadAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Ads"),
      ),
    );
  }
}
