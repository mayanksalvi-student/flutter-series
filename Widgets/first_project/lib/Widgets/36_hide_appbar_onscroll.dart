import 'package:flutter/material.dart';

class HideAppBarOnScroll extends StatelessWidget {
  const HideAppBarOnScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hide AppBar On Scroll'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true, // Keep the app bar pinned to the top of the screen
            expandedHeight: 200.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('AppBar Title'),
              background: Image(
                image: AssetImage('assets/images/doremon.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 50, // Example list with 50 items
            ),
          ),
        ],
      ),
    );
  }
}
