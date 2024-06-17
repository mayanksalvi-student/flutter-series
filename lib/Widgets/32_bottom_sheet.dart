import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Sheet Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
          /* Default Bottom Sheet                                                                                                                                                                                                                                                                                                                                     */
          /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

          Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return ListView(
                        children: const [
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                        ],
                      );
                    });
              },
              child: const Text('Open Default Bottom Sheet'),
            ),
          ),

          /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
          /* Desined Bottom Sheet                                                                                                                                                                                                                                                                                                                                     */
          /* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

          Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Theme.of(context).secondaryHeaderColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    elevation: 5,
                    enableDrag: true,
                    showDragHandle: true,

                    // uncomment and set true to hide bottom sheet by click outside of it.
                    // isDismissible: false,

                    // barrierColor: Colors.amber,
                    context: context,
                    builder: (context) {
                      return ListView(
                        children: const [
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Title here'),
                            subtitle: Text('Some Subtitle Here'),
                            trailing: Icon(Icons.delete),
                          ),
                          Divider(),
                        ],
                      );
                    });
              },
              child: const Text('Open Desined Bottom Sheet'),
            ),
          ),
        ],
      ),
    );
  }
}
