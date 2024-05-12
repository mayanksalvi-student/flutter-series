import 'package:flutter/material.dart';

class RowColumnAndWrapWidgets extends StatelessWidget {
  const RowColumnAndWrapWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Column And Wrap Widget')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Row Example', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            color: Colors.pink.shade100,
            child: const Row(
              children: [
                Text('Widget 1'),
                SizedBox(width: 10),
                Text('Widget 2'),
                SizedBox(width: 10),
                Text('Widget 3'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text('Column Example', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            color: Colors.pink.shade100,
            child: const Column(
              children: [
                Text('Widget 1'),
                SizedBox(height: 10),
                Text('Widget 2'),
                SizedBox(height: 10),
                Text('Widget 3'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text('Wrap Example', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.pink.shade100,
            child: Wrap(
              // direction: Axis.vertical,
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(3),
                  color: Colors.red,
                ),
                Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(3),
                  color: Colors.black,
                ),
                Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(3),
                  color: Colors.brown,
                ),
                const BuildContainer(
                  color: Colors.blue,
                ),
                const BuildContainer(
                  color: Colors.orange,
                ),
                const BuildContainer(
                  color: Colors.pink,
                ),
                const BuildContainer(
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BuildContainer extends StatelessWidget {
  final Color color;
  const BuildContainer({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.all(3),
      color: color,
    );
  }
}
