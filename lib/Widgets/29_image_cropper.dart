import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
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

// after that also add below activity in 'android/app/src/main/AndroidManifest.xml' to use crop activity

// <activity
//             android:name="com.yalantis.ucrop.UCropActivity"
//             android:screenOrientation="portrait"
//             android:theme="@style/Theme.AppCompat.Light.NoActionBar"/>

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<void> pickImage(bool fromGallery) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(
        source: fromGallery ? ImageSource.gallery : ImageSource.camera);

    if (image != null) {
      final croppedImage = await ImageCropper().cropImage(
        sourcePath: image.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio7x5,
          CropAspectRatioPreset.ratio16x9,
        ],
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          IOSUiSettings(title: 'Crop Image'),
        ],
      );

      if (croppedImage != null && mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CroppedImage(image: croppedImage),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker and Cropper')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              padding: const EdgeInsets.all(20),
              onPressed: () => pickImage(true),
              child: const Text('Pick Gallery Image'),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              padding: const EdgeInsets.all(20),
              onPressed: () => pickImage(false),
              child: const Text('Capture Camera Image'),
            ),
          ],
        ),
      ),
    );
  }
}

class CroppedImage extends StatelessWidget {
  final CroppedFile image;
  const CroppedImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cropped Image')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: InteractiveViewer(
            child: Image.file(File(image.path)),
          ),
        ),
      ),
    );
  }
}
