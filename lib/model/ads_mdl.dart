class AdsModel {
  final String id,
      title,
      locationState,
      description,
      contactInfo,
      price,
      timePosted,
      category,
      originalPoster;
  final bool isActive;
  final List<String> images;

  AdsModel({
    required this.id,
    required this.isActive,
    required this.category,
    required this.images,
    required this.title,
    required this.timePosted,
    required this.locationState,
    required this.price,
    required this.description,
    required this.contactInfo,
    required this.originalPoster,
  });
}
