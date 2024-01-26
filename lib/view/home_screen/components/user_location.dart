import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view_model/local_storage.dart';
import 'package:aminahub/view_model/user_location.dart';
import 'package:flutter/material.dart';

class UserLocation extends StatefulWidget {
  UserLocation({super.key});

  final UserLocationViewModel userLocationViewModel = UserLocationViewModel();

  @override
  State<UserLocation> createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {
  @override
  void initState() {
    super.initState();
    widget.userLocationViewModel.getUserLocation();
  }

  Future<String> getUserLocationHere() async {
    String? address = await getUserLocationLocal();
    return address ?? "Connection error!";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getSrnWidth(40)),
      child: FutureBuilder<String>(
        future: getUserLocationHere(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text(
              "Loading...",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getSrnHeight(10),
                fontWeight: FontWeight.bold,
              ),
            );
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else {
            return Text(
              snapshot.data!,
              style: TextStyle(
                fontSize: getSrnHeight(10),
                fontWeight: FontWeight.bold,
              ),
            );
          }
        },
      ),
    );
  }
}
