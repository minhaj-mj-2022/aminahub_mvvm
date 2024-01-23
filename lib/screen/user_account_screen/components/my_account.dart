import 'package:flutter/material.dart';

class UserAccountInfo extends StatefulWidget {
  static String routeName = '/UserAccountInfo';
  const UserAccountInfo({super.key});

  @override
  State<UserAccountInfo> createState() => _UserAccountInfoState();
}

class _UserAccountInfoState extends State<UserAccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Account"),
      ),
    );
  }
}
