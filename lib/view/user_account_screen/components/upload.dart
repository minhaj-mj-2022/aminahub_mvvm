import 'dart:io';
import 'package:aminahub/utils/constant.dart';
import 'package:aminahub/view_model/user_upload_ads_view_mdl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserUploadAdsView extends StatefulWidget {
  static String routeName = '/UserUploadAds';
  const UserUploadAdsView({Key? key}) : super(key: key);

  @override
  State<UserUploadAdsView> createState() => _UserUploadAdsViewState();
}

class _UserUploadAdsViewState extends State<UserUploadAdsView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController locationStateController = TextEditingController();
  final TextEditingController contactController = TextEditingController();

  String? originalPoster = FirebaseAuth.instance.currentUser?.email;
  String? selectedCategory;

  List<String> imageUrls = [];
  List<File> selectedImages = [];

  double _uploadProgress = 0.0;

  late final UserUploadAdsViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = UserUploadAdsViewModel(
      titleController: titleController,
      descriptionController: descriptionController,
      priceController: priceController,
      locationStateController: locationStateController,
      contactController: contactController,
      context: context,
    );
  }

  Future<void> pickImages() async {
    List<XFile>? pickedImages = await ImagePicker().pickMultiImage();

    if (pickedImages.isNotEmpty) {
      setState(() {
        selectedImages = pickedImages.map((pickedImage) {
          return File(pickedImage.path);
        }).toList();
      });
      setState(() {
        _viewModel.selectedImages = selectedImages;
      });
    } else {
      if (kDebugMode) {
        print('No images selected.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Ads'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              const SizedBox(height: 8.0),
              DropdownButtonFormField<String>(
                value: selectedCategory,
                items: constAdSategories.map((category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                    _viewModel.selectedCategory = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Category',
                ),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Descriptions'),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: priceController,
                decoration:
                    const InputDecoration(labelText: 'Price (optional)'),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: locationStateController,
                decoration: const InputDecoration(labelText: 'Location State'),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: contactController,
                decoration: const InputDecoration(labelText: 'Contact'),
              ),
              Center(
                child: IconButton(
                  iconSize: 50.0,
                  onPressed: () {
                    pickImages();
                  },
                  icon: const Icon(Icons.image),
                ),
              ),
              selectedImages.isNotEmpty
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: selectedImages.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Image.file(
                          selectedImages[index],
                          height: 200.0,
                        );
                      },
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 15.0),
              LinearProgressIndicator(value: _uploadProgress),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  _viewModel.uploadData(context);
                  setState(() {
                    _uploadProgress = 0.0;
                  });
                },
                child: const Text('Upload'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
