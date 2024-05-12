import 'package:flutter/material.dart';

class SeparatedListViewWidget extends StatelessWidget {
  const SeparatedListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var namesArray = [
      'John',
      'Mohan',
      'Alice',
      'Bob',
      'Emma',
      'Oliver',
      'Sophia',
      'Liam',
      'Ava',
      'Noah',
      'Isabella',
      'James',
      'Charlotte',
      'William',
      'Amelia',
      'Ethan',
      'Evelyn',
      'Michael',
      'Abigail',
      'Alexander',
      'Harper',
      'Daniel',
      'Emily',
      'Matthew',
      'Elizabeth',
      'Jackson',
      'Sofia',
      'David',
      'Ella',
      'Joseph',
      'Madison'
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.separated widget')),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Text(namesArray[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: namesArray.length,
      ),
    );
  }
}
