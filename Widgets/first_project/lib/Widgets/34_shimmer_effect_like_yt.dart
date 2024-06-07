import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffectLikeYoutube extends StatefulWidget {
  const ShimmerEffectLikeYoutube({Key? key}) : super(key: key);

  @override
  State<ShimmerEffectLikeYoutube> createState() =>
      _ShimmerEffectLikeYoutubeState();
}

class _ShimmerEffectLikeYoutubeState extends State<ShimmerEffectLikeYoutube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Setting up the app bar with a title
          title: const Text('Shimmer Effect')),
      body:
          const ShimmerEffect(), // Displaying the shimmer effect in the body of the scaffold
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
          // Adding padding around each shimmering list tile
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Shimmer.fromColors(
            // Applying the shimmer effect with colors
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: ListTile(
              // Shimmering list tile
              leading: Container(
                // Shimmering leading icon or image
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    // Adding a shadow to the shimmering leading container
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                width: 56.0,
                height: 56.0,
              ),
              title: Container(
                // Shimmering title
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    // Adding a shadow to the shimmering title container
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                height: 16.0,
              ),
              subtitle: Container(
                // Shimmering subtitle
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    // Adding a shadow to the shimmering subtitle container
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                height: 12.0,
              ),
              dense: true,
            ),
          ),
        );
      },
    );
  }
}
