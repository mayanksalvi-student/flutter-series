import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  @override
  Widget build(BuildContext context) {
    // List<int> items = [];
    // for (int index = 0; index < 100; index++) {
    //   items.add(index);
    // }
    // List<int> items = List<int>.generate(100, (int index) => index);
    List<String> fruits = ['apple', 'banana', 'guava', 'grapes', 'mango'];
    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible Widget')),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Dismissible(
                key: Key(fruits[index]),
                background: Container(
                  color: Colors.red,
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                  child: const Icon(
                    Icons.archive,
                    color: Colors.white,
                  ),
                ),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    showSnackBar(context, 'Item Deleted',
                        backgroundColor: Colors.red);
                  } else {
                    showSnackBar(context, 'Item Archived',
                        backgroundColor: Colors.green);
                  }
                },
                child: Card(
                  child: ListTile(
                    onTap: () {
                      showSnackBar(context, fruits[index]);
                    },
                    title: Text('${(index + 1).toString()}. ${fruits[index]}'),
                  ),
                ));
          }),
    );
  }
}

void showSnackBar(BuildContext context, String content,
    {Color backgroundColor = Colors.black}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
    ),
  );
}
