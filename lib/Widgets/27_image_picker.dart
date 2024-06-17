import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
/* To give Permission access for gallary in android add these below line in android/app/src/main/AndroidManifest.xml                                                                                                                                                                                                                                                                     */
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

// <uses-permission android:name="android.permission.CAMERA"/>
// <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
// <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
/* To give Permission access for gallary add these below line in ios>Runner>info.plist                                                                                                                                                                                                                                                                      */
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
/* <!--start added these lines to get access of gallary --> */
/* <key>NSCameraUsageDescription</key>*/
/* <string>We need access to the camera to take pictures.</string> */
/* <key>NSPhotoLibraryUsageDescription</key> */
/* <string>We need access to the photo library to select pictures.</string> */
/* <key>NSPhotoLibraryAddUsageDescription</key> */
/* <string>We need access to add pictures to the photo library.</string> */
/* <!--end added these lines to get access of gallary --> */
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

class ImagePicker3 extends StatefulWidget {
  const ImagePicker3({super.key});

  @override
  State<ImagePicker3> createState() => _ImagePicker3State();
}

class _ImagePicker3State extends State<ImagePicker3> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? avatar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 8),
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: avatar == null
                      ? const NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/6897/6897018.png')
                      : FileImage(File(avatar!.path)) as ImageProvider<Object>),
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 30,
                  offset: Offset(1, 2),
                  color: Colors.grey,
                ),
              ],
            ),
            height: 200,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () async {
              final XFile? pickedAvatar =
                  await _imagePicker.pickImage(source: ImageSource.gallery);
              setState(() {
                avatar = pickedAvatar;
              });
              // uncomment below statement to print picked image path
              // print(pickedAvatar!.path);
            },
            child: const Text('Select Image'),
          )
        ],
      ),
    );
  }
}
