import 'package:flutter/material.dart';

class GenerateListExample extends StatelessWidget {
  const GenerateListExample({super.key});

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
      appBar: AppBar(title: const Text('GenerateList Example')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(namesArray.length, (index) {
            return Padding( 
              padding: const EdgeInsets.all(8.0),
              child: Text(namesArray[index]),
            );
          }),
        ),
      ),
    );
  }
}
