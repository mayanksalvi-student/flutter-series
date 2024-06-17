import 'package:flutter/material.dart';

class BottomNavWithWidgetList extends StatefulWidget {
  const BottomNavWithWidgetList({super.key});

  @override
  State<BottomNavWithWidgetList> createState() =>
      _BottomNavWithWidgetListState();
}

class _BottomNavWithWidgetListState extends State<BottomNavWithWidgetList> {
  int selectedNavIndex = 0;
  List<Widget> widgets = [const Text('Home'), const Text('About')];
  void onNavItemTapped(int index) {
    setState(() {
      selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavWithWidgetList')),
      body: Center(child: widgets.elementAt(selectedNavIndex)),
      // ek se jyada BottomNavigationBarItem hone chahiye or unme label bhi add hona chahiye nahi to error aygi
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About')
        ],
        currentIndex: selectedNavIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onNavItemTapped,
      ),
    );
  }
}
// class BottomNavWithWidgetList extends StatefulWidget {
//   const BottomNavWithWidgetList({super.key});

//   @override
//   State<BottomNavWithWidgetList> createState() =>
//       _BottomNavWithWidgetListState();
// }

// class _BottomNavWithWidgetListState extends State<BottomNavWithWidgetList> {
//   int selectedNavIndex = 0;

//   List<Widget> widgets = [
//     const Text('HOME'),
//     const Text('SEARCH'),
//     const Text('ADD'),
//     const Text('PROFILE'),
//   ];

//   void onNavItemTapped(int index) {
//     setState(() {
//       selectedNavIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Bottom Nav'),
//       ),

//       body: Center(child: widgets.elementAt(selectedNavIndex)),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         currentIndex: selectedNavIndex,
//         selectedItemColor: Theme.of(context).primaryColor,
//         unselectedItemColor: Colors.grey,
//         onTap: onNavItemTapped,
//       ),
//     );
//   }
// }
