import 'package:flutter/material.dart'; // Importing the Flutter Material package for UI components
import 'package:shimmer/shimmer.dart'; // Importing the shimmer package after adding the package in pubspec.yaml file for adding shimmer effect

class ShimmerEffectExample extends StatefulWidget {
  const ShimmerEffectExample({super.key});

  @override
  State<ShimmerEffectExample> createState() => _ShimmerEffectExampleState();
}

class _ShimmerEffectExampleState extends State<ShimmerEffectExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Setting up the app bar with a title
          title: const Text('Shimmer Effect')),
      body:
          // Displaying the shimmer effect in the body of the scaffold
          const ShimmerEffect(),
    );
  }
}

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Creating a list with 10 shimmering items
      itemBuilder: (context, index) {
        return Padding(
          // Adding padding around each shimmering item
          padding: const EdgeInsets.all(8.0),
          child: Shimmer.fromColors(
            // Applying the shimmer effect with colors
            baseColor:
                Colors.grey[300]!, // Setting the base color of the shimmer
            highlightColor:
                Colors.grey[100]!, // Setting the highlight color of the shimmer
            child: Container(
              height: 100, // Setting the height of the shimmering container
              width: double
                  .infinity, // Setting the width of the shimmering container to match the screen width
              color:
                  Colors.white, // Setting the color of the shimmering container
            ),
          ),
        );
      },
    );
  }
}
