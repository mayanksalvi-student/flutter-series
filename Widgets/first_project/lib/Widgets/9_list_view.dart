import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View')),
      body: SizedBox(
        height: 500,
        child: ListView(
          scrollDirection:
              Axis.horizontal, // By Default scrollDirection is Vertical
          reverse:
              true, // To reverse childrens of List, By Default reverse if false
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              height: 100,
              width: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text('Container 1'),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              height: 100,
              width: 100,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text('Container 2'),
            ),
            const BuildContainer(
              color: Colors.blue,
              text: 'Container 3',
            ),
            const BuildContainer(
              color: Colors.amber,
              text: 'Container 4',
            ),
            const BuildContainer(
              color: Colors.blue,
              text: 'Container 5',
            ),
            const BuildContainer(
              color: Colors.amber,
              text: 'Container 6',
            ),
            const BuildContainer(
              color: Colors.blue,
              text: 'Container 7',
            ),
            const BuildContainer(
              color: Colors.amber,
              text: 'Container 8',
            ),
          ],
        ),
      ),
    );
  }
}

class BuildContainer extends StatelessWidget {
  final Color color;
  final String text;

  const BuildContainer({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      height: 100,
      width: 100,
      color: color,
      alignment: Alignment.center,
      child: Text(text),
    );
  }
}
