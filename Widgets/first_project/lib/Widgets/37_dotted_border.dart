import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class DottedBorderExample extends StatelessWidget {
  const DottedBorderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dotted Border')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          DottedBorder(
            borderType: BorderType.Rect,
            strokeWidth: 2,
            color: Colors.blue,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow.shade50,
            ),
          ),
          SizedBox(height: 20),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(20),
            strokeWidth: 2,
            color: Colors.red,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green.shade50,
            ),
          ),
          SizedBox(height: 20),
          DottedBorder(
            borderType: BorderType.Circle,
            strokeWidth: 2,
            color: Colors.orange,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple.shade50,
            ),
          ),
          SizedBox(height: 20),
          DottedBorder(
            borderType: BorderType.Oval,
            strokeWidth: 2,
            color: Colors.pink,
            child: Container(
              width: 150,
              height: 100,
              color: Colors.lightBlue.shade50,
            ),
          ),
        ],
      ),
    );
  }
}
