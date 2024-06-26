import 'package:flutter/material.dart';

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
/* A SizedBox widget in Flutter is used to create a box with a specified width, height, or both. It's a layout utility widget that provides a way to add space or create fixed-size gaps between widgets in a Flutter UI.                                                                                                                                   */
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBox Widget')),

      /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
      /* Note: SizedBox cannot directly apply color, decoration, or background image. It is primarily used for sizing widgets and creating fixed-size gaps in layouts.                                                                                                                                                                                            */
      /* To apply styling or background, wrap SizedBox with a Container widget.                                                                                                                                                                                                                                                                                   */
      /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

      body: const SizedBox(
        height: 20.0,
        width: 40.0, // Increase width 40->100 to show complete text
        child: Text('Hello Word'),
      ),
    );
  }
}
