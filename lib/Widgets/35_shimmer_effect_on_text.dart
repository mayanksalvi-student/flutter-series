import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TextShimmerEffectExample extends StatelessWidget {
  const TextShimmerEffectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Shimmer Effect')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text('Normal Text',
                style: TextStyle(fontSize: 18)), // Placeholder text
            const SizedBox(height: 20),
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: const Text(
                'Shimmering Text', // Text to shimmer
                style: TextStyle(
                  fontSize: 24, // Font size of the shimmering text
                  fontWeight:
                      FontWeight.bold, // Font weight of the shimmering text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
