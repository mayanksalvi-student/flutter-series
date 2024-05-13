import 'package:flutter/material.dart';

class BottomNavWithWidgetList extends StatefulWidget {
  const BottomNavWithWidgetList({super.key});

  @override
  State<BottomNavWithWidgetList> createState() =>
      _BottomNavWithWidgetListState();
}

class _BottomNavWithWidgetListState extends State<BottomNavWithWidgetList> {
  int selectedNavIndex = 0;

  List<Widget> widgets = [
    Text('HOME'),
    Text('SEARCH'),
    Text('ADD'),
    Text('PROFILE'),
  ];

  void onNavItemTapped(int index) {
    setState(() {
      selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav'),
      ),
      body: Center(child: widgets.elementAt(selectedNavIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: selectedNavIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: onNavItemTapped,
      ),
    );
  }
}
