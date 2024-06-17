import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2, // index starts with 0
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 131, 73),
          title: const Text('Tab bar widget'),
          bottom: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.chat, color: Colors.white), text: 'Chats'),
              Tab(
                  icon: Icon(Icons.update, color: Colors.white),
                  text: 'Updates'),
              Tab(
                  icon: Icon(Icons.groups_2_rounded, color: Colors.white),
                  text: 'Communities'),
              Tab(
                icon: Icon(Icons.call_sharp, color: Colors.white),
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Center(child: SizedBox(child: Text('Chats'))),
          Center(child: SizedBox(child: Text('Updates'))),
          Center(child: SizedBox(child: Text('Communities'))),
          Center(child: SizedBox(child: Text('Calls'))),
        ]),
      ),
    );
  }
}
