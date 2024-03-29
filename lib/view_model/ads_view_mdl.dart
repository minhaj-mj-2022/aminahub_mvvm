import 'package:aminahub/model/ads_mdl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdsModelService {
  final CollectionReference adsModelsCollection =
      FirebaseFirestore.instance.collection('ads');

  Future<List<AdsModel>> getAdsModels(
      String userCategorySelected, String filterTime) async {
    QuerySnapshot<Object?> querySnapshot;

    if (userCategorySelected == "All Ads") {
      querySnapshot = await adsModelsCollection.get();
    } else {
      querySnapshot = await adsModelsCollection
          .where('category', isEqualTo: userCategorySelected)
          .get();
    }

    List<AdsModel> adsModels = [];

    for (var doc in querySnapshot.docs) {
      var data = doc.data() as Map<String, dynamic>;

      List<String> images = List<String>.from(data['images']?.toList() ??
          [
            "https://firebasestorage.googleapis.com/v0/b/aminahub-18c2f.appspot.com/o/constant%2F%E2%80%94Pngtree%E2%80%94404%20error%20page_2596650.png?alt=media&token=9500fc72-5538-4e5a-abd2-6ff69cb20eee"
          ]);

      AdsModel adsModel = AdsModel(
        id: data['ads_id'] ?? "0",
        title: data['title'] ?? "No value",
        description: data['description'] ?? "No value",
        contactInfo: data['contact'] ?? "No value",
        timePosted: data['time_posted'] ?? "No value",
        category: data['category'] ?? "No value",
        images: images,
        price: data['price'] ?? "No value",
        locationState: data['location_state'] ?? "No Value",
        isActive: data['isActive'] ?? false,
        originalPoster: data['op'] ?? "No value",
      );
      adsModels.add(adsModel);
    }

    // Sort adsModels based on filterTime
    if (filterTime == 'Oldest') {
      adsModels.sort((a, b) => a.timePosted.compareTo(b.timePosted));
    } else {
      adsModels.sort((a, b) => b.timePosted.compareTo(
          a.timePosted)); // Default to latest if filterTime is not recognized
    }

    return adsModels;
  }
}
