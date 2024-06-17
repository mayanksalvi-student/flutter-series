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


class MultipleImagePicker extends StatefulWidget {
  const MultipleImagePicker({super.key});

  @override
  State<MultipleImagePicker> createState() => _MultipleImagePickerState();
}

class _MultipleImagePickerState extends State<MultipleImagePicker> {
  final ImagePicker _imagePicker = ImagePicker();
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pic Multiple Image')),
      body: Column(
        children: [
          if (files != null)
            Expanded(
              child: GridView.builder(
                  itemCount: files!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(File(files![index].path)))),
                    );
                  }),
            )
          else
            Expanded(
              child: Container(
                child: Center(
                  child: Text('Upload Image'),
                ),
              ),
            ),
          Container(
            height: 60,
            child: ElevatedButton(
              onPressed: () async {
                final List<XFile> pickedImages =
                    await _imagePicker.pickMultiImage();
                // print(pickedImages.length);
                setState(() {
                  files = pickedImages;
                });
              },
              child: const Text('Pick Images'),
            ),
          )
        ],
      ),
    );
  }
}
