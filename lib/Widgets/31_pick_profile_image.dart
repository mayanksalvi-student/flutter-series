import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickProfileImage extends StatefulWidget {
  const PickProfileImage({super.key});

  @override
  State<PickProfileImage> createState() => _PickProfileImageState();
}

class _PickProfileImageState extends State<PickProfileImage> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? avtar;

  pickAvtar() async {
    final XFile? pickAvtar =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    // print(pickAvtar!.path);
    
    if (pickAvtar != null && mounted) {
      setState(() {
        avtar = pickAvtar;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick Profile Image')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                pickAvtar();
              },
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 10, color: Colors.blueGrey),
                    ),
                    child: CircleAvatar(
                      maxRadius: 100,
                      backgroundImage: avtar != null
                          ? FileImage(File(avtar!.path)) as ImageProvider
                          : const AssetImage('assets/images/doremon.jpeg'),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Colors.blueGrey, shape: BoxShape.circle),
                        child: const Center(
                            child: Icon(
                          Icons.add_a_photo,
                          size: 25,
                          color: Colors.white,
                        ))),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                pickAvtar();
              },
              child: const Text('Pick Profile'))
        ],
      ),
    );
  }
}
