import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CacheNetworkImage extends StatelessWidget {
  const CacheNetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cached Network Image Example')),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: 'https://via.placeholder.com/150',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
