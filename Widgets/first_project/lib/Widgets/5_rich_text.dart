import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(text: 'App'),
              TextSpan(
                text: 'Title',
                style: TextStyle(color: Color.fromARGB(255, 87, 220, 169)),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            children: [
              TextSpan(text: 'Some '),
              TextSpan(
                text: 'Text ',
                style: TextStyle(color: Colors.blue),
              ),
              TextSpan(
                text: 'Here',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
