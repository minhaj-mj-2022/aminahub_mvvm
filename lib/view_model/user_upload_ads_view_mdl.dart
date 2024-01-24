import 'package:aminahub/view/user_account_screen/components/upload.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'dart:io';

class UserUploadAdsViewModel {
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;
  final TextEditingController locationStateController;
  final TextEditingController contactController;
  final BuildContext context;

  UserUploadAdsViewModel({
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
    required this.locationStateController,
    required this.contactController,
    required this.context,
  });

  String? selectedCategory;
  List<String> imageUrls = [];
  List<File> selectedImages = [];

  Future<void> uploadImages(String adsId) async {
    for (File selectedImage in selectedImages) {
      final String fileExtension =
          selectedImage.path.split('.').last.toLowerCase();

      final storageReference = FirebaseStorage.instance
          .ref()
          .child('images/$adsId/${generateUuid()}.$fileExtension');

      final File imageFile = File(selectedImage.path);

      final UploadTask uploadTask = storageReference.putFile(
        imageFile,
        SettableMetadata(contentType: 'image/$fileExtension'),
      );

      uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
        double progress = snapshot.bytesTransferred / snapshot.totalBytes;
      });

      await uploadTask;

      final String downloadURL = await storageReference.getDownloadURL();
      imageUrls.add(downloadURL);
    }
  }

  void uploadData(BuildContext context) async {
    if (areFieldsFilled()) {
      String adsId = generateUuid();
      print(adsId);

      if (selectedCategory != null && selectedCategory!.isNotEmpty) {
        await uploadImages(adsId);
        print(selectedCategory);
        await FirebaseFirestore.instance.collection('ads').add({
          'ads_id': adsId,
          'isActive': true,
          'title': titleController.text,
          'category': selectedCategory,
          'images': imageUrls,
          'contact': contactController.text,
          'description': descriptionController.text,
          'location_state': locationStateController.text,
          'price': priceController.text,
          'originalPoster': FirebaseAuth.instance.currentUser?.email,
          'time_posted': DateTime.now().toString(),
        });

        imageUrls = [];
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Upload successful'),
            ),
          );
        } else {
          print('Upload failed');
        }

        await Future.delayed(const Duration(seconds: 3));
        if (context.mounted) {
          Navigator.of(context)
              .pushReplacementNamed(UserUploadAdsView.routeName);
        }
      } else {
        if (kDebugMode) {
          print('Please select a category');
        }
      }
    }
  }

  bool areFieldsFilled() {
    if (titleController.text.isEmpty ||
        contactController.text.isEmpty ||
        descriptionController.text.isEmpty ||
        locationStateController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('All text fields must be filled'),
        ),
      );
      return false;
    }

    return true;
  }

  String generateUuid() {
    var uuid = const Uuid();
    return uuid.v4();
  }
}
