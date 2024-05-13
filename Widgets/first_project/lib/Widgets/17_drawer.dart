import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerExampe extends StatelessWidget {
  DrawerExampe({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.greenAccent,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black87),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Drawer Header',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    'examplemail@email.com',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                print('My Files');
              },
              leading: Icon(Icons.folder),
              title: Text('My Files'),
            ),
            const ListTile(
              leading: Icon(Icons.group),
              title: Text('Shared with me'),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
            ),
            const ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash'),
            ),
            const ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploads'),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text('Drawer Widget')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.remove_red_eye),
                  label: const Text('Show Drawer'),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('back'),
          )
        ],
      ),
    );
  }
}
