import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdsCardView extends StatefulWidget {
  final String id,
      title,
      locationState,
      description,
      contactInfo,
      price,
      imageUrl;
  final bool isActive;
  final double cardWidth, imgAspectRatio, leftMargin;

  const AdsCardView(
      {super.key,
      required this.title,
      required this.cardWidth,
      required this.imgAspectRatio,
      required this.leftMargin,
      required this.id,
      required this.locationState,
      required this.description,
      required this.contactInfo,
      required this.price,
      required this.isActive,
      required this.imageUrl});

  @override
  State<AdsCardView> createState() => _AdsCardViewState();
}

class _AdsCardViewState extends State<AdsCardView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getSrnWidth(widget.leftMargin),
          top: getSrnHeight(1),
          bottom: getSrnHeight(6)),
      child: Container(
        width: getSrnWidth(widget.cardWidth),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: widget.imgAspectRatio,
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Text(
                widget.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
