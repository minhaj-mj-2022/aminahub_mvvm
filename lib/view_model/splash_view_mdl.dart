import 'package:aminahub/model/splash_mdl.dart';
import 'package:flutter/material.dart';

class SplashViewModel extends ChangeNotifier {
  final SplashModel _model = SplashModel();
  int currentPage = 0;

  List<Map<String, String>> get splashData => _model.splashData;

  void onPageChanged(int value) {
    currentPage = value;
    notifyListeners();
  }
}
