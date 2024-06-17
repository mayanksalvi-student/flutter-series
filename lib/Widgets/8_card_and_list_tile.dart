import 'package:flutter/material.dart';

class CardAndListTileWidget extends StatelessWidget {
  const CardAndListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card And ListTile')),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Title'),
              subtitle: const Text('This is subtitle'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('HTML'),
              subtitle: const Text('Hypertext markup language'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('CSS'),
              subtitle: const Text('Cascading style sheet'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('JS'),
              subtitle: const Text('Java Script'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('ASP'),
              subtitle: const Text('Active Server Page'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('PHP'),
              subtitle: const Text('Php hypertext preprocessor'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('HTML'),
              subtitle: const Text('Hypertext markup language'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('HTML'),
              subtitle: const Text('Hypertext markup language'),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          ),
          
        ],
      ),
    );
  }
}
