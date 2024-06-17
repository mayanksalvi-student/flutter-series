import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Widget')),
      body: const Text(
        'Hello World',
        style: TextStyle(
          color: Colors.grey, 
          fontSize: 22,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.pink,
          decoration: TextDecoration.underline,
          height: 2.0,
          letterSpacing: 9.0,
          wordSpacing: 10.0,
        ),
      ),
    );
  }
}
