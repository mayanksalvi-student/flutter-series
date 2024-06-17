import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var namesArray = {
      "HTML": "Hypertext markup language",
      "CSS": "Cascading style sheet",
      "JS": "Java Script"
    };
    var keys = namesArray.keys.toList();
    var values = namesArray.values.toList();
    return Scaffold(
      appBar: AppBar(title: const Text('ListViewBuilder Widget')),
      body: ListView.builder(
          itemCount: namesArray.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: const Icon(Icons.person_4),
                title: Text(keys[index]),
                subtitle: Text(values[index]),
                trailing: const Icon(Icons.check),
              ),
            );
          }),
    );
  }
}
