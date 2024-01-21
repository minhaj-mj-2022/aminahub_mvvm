import 'package:aminahub/model/images_mdl.dart';

class DemoAd {
  final String title;
  final String imageUrl;

  DemoAd({required this.title, required this.imageUrl});
}

final List<Map<String, dynamic>> demoAds = [
  {'title': 'Ad 1 \n test', 'imageUrl': ImagesModel.testImage},
  {'title': 'Ad 2', 'imageUrl': ImagesModel.testImageVrtcl},
  {'title': 'Ad 3', 'imageUrl': ImagesModel.testImageVrtcl},
];
