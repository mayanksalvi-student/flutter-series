import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class SimpleWayToCropImage extends StatefulWidget {
  const SimpleWayToCropImage({super.key});

  @override
  State<SimpleWayToCropImage> createState() => _SimpleWayToCropImageState();
}

class _SimpleWayToCropImageState extends State<SimpleWayToCropImage> {
  final ImagePicker _picker = ImagePicker();
  File? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practice File')),
      body: Column(
        children: [
          Expanded(
              child: Center(
                  child: file != null
                      ? Image.file(file!)
                      : const Icon(Icons.image_outlined))),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ElevatedButton(
              style: const ButtonStyle(elevation: MaterialStatePropertyAll(10)),
              onPressed: () async {
                final XFile? pickedFile =
                    await _picker.pickImage(source: ImageSource.gallery);
                // print(pickedFile!.path);

                if (pickedFile != null) {
                  final croppedImage = await ImageCropper().cropImage(
                    sourcePath: pickedFile.path,

                    // uncomment if we want custom ratio

                    // aspectRatioPresets: [
                    //   CropAspectRatioPreset.square,
                    //   CropAspectRatioPreset.ratio3x2,
                    //   CropAspectRatioPreset.original,
                    //   CropAspectRatioPreset.ratio4x3,
                    //   CropAspectRatioPreset.ratio16x9,
                    // ],
                    uiSettings: [
                      AndroidUiSettings(
                        toolbarTitle: 'Crop Image',
                        toolbarColor: Colors.deepOrange,
                        toolbarWidgetColor: Colors.white,
                        initAspectRatio: CropAspectRatioPreset.original,
                        lockAspectRatio: false,
                      ),
                      IOSUiSettings(
                        title: 'Crop Image',
                      ),
                    ],
                  );
                  // print(croppedImage!.path);
                  if (croppedImage != null) {
                    setState(() {
                      file = File(croppedImage.path);
                    });
                  }
                }
              },
              child: const Text('Pick Image'),
            ),
          )
        ],
      ),
    );
  }
}
