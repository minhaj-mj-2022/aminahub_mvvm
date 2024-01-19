import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class UserLocation extends StatefulWidget {
  const UserLocation({super.key});

  @override
  State<UserLocation> createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getSrnWidth(40)),
      child: SizedBox(
        child: Text(
          "Dhaka, Bangladesh",
          style: TextStyle(
              fontSize: getSrnHeight(10), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
