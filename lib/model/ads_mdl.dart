import 'package:aminahub/model/images_mdl.dart';

class DemoAd {
  final String title;
  final String adCategory;
  final String imageUrl;

  DemoAd(this.adCategory, {required this.title, required this.imageUrl});
}

final List<Map<String, dynamic>> demoAds = [
  {
    'title': 'Ad 1 \n test',
    'imageUrl': ImagesModel.testImage,
    'adCategory': 'IT Training'
  },
  {
    'title': 'Ad 2',
    'imageUrl': ImagesModel.testImageVrtcl,
    'adCategory': 'IT Training'
  },
  {
    'title': 'Ad 3',
    'imageUrl': ImagesModel.testImageVrtcl,
    'adCategory': 'IT Training'
  },
];
