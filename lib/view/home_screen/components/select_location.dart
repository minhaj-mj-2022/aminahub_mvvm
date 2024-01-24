import 'package:aminahub/view/home_screen/home_scrn.dart';
import 'package:aminahub/utils/buttons.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view_model/local_storage.dart';
import 'package:aminahub/view_model/user_location.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  static String routeName = '/SelectLocation';
  final UserLocationViewModel userLocationViewModel = UserLocationViewModel();

  SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  late String address = '';
  String selectedCity = "";
  String selectedCountry = "";
  String selectedState = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Select Location",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CSCPicker(
                    flagState: CountryFlag.DISABLE,
                    layout: Layout.vertical,
                    onCountryChanged: (country) {
                      setState(() {
                        selectedCountry = country;
                      });
                    },
                    onStateChanged: (state) {
                      setState(() {
                        selectedState = state ?? "";
                      });
                    },
                    onCityChanged: (city) {
                      setState(() {
                        selectedCity = city ?? "";
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  PrimaryBtn(
                    btnText: "Select and Update",
                    onPressed: () async {
                      if (selectedState != "") {
                        address = selectedState;

                        if (selectedCountry != "") {
                          address = "$selectedCountry, $address";
                        }
                      } else if (selectedCity != "") {
                        address = selectedCity;

                        if (selectedState != "") {
                          address += ", $selectedState";
                        }
                      } else if (selectedCountry != "") {
                        address = selectedCountry;
                      }
                      await saveUserLocationLocal(address);
                      ;
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                  ),
                  SizedBox(
                    height: getSrnHeight(5),
                  ),
                  PrimaryBtn(
                    btnText: 'Use Current Location',
                    onPressed: () {
                      widget.userLocationViewModel.getUserLocation();
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
