import 'package:flutter/material.dart';

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
/* In this example:      */
/* Padding.all(16.0) adds 16.0 pixels of padding on all sides.*/
/* Padding.symmetric(vertical: 8.0, horizontal: 16.0) adds 8.0 pixels of vertical padding and 16.0 pixels of horizontal padding.*/
/* Padding.only(left: 24.0) adds 24.0 pixels of padding on the left side only.*/
/* Padding.fromLTRB(8.0, 16.0, 24.0, 32.0) adds 8.0 pixels of padding on the top, 16.0 pixels on the right, 24.0 pixels on the bottom, and 32.0 pixels on the left.                                                                                                                                                                                         */
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding Widget')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.all(16.0), // Adds 16.0 pixels padding on all sides
            child: Text('Padding.all(16.0)'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal:
                    16.0), // Adds 8.0 pixels vertical padding and 16.0 pixels horizontal padding
            child: Text('Padding.symmetric(vertical: 8.0, horizontal: 16.0)'),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 24.0), // Adds 24.0 pixels padding on the left side only
            child: Text('Padding.only(left: 24.0)'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 16.0, 24.0,
                32.0), // Adds 8.0 pixels padding on the top, 16.0 pixels padding on the right, 24.0 pixels padding on the bottom, and 32.0 pixels padding on the left
            child: Text('Padding.fromLTRB(8.0, 16.0, 24.0, 32.0)'),
          ),
        ],
      ),
    );
  }
}
