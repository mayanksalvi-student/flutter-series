import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center Widget')),
      body: Center(
        child: Container(
          color: Colors.amber,
          height: 300,
          width: 300,
          child: const Center(child: Text('Centered Text')),
        ),
      ),
    );
  }
}
