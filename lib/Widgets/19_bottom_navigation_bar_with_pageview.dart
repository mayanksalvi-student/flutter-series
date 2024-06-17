import 'package:flutter/material.dart';

class BottomNavWithPageView extends StatefulWidget {
  const BottomNavWithPageView({super.key});

  @override
  State<BottomNavWithPageView> createState() => _BottomNavWithPageViewState();
}

class _BottomNavWithPageViewState extends State<BottomNavWithPageView> {
  int selectedNavIndex = 0;
  PageController pageController = PageController();

  void onNavItemTapped(int index) {
    setState(() {
      selectedNavIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav'),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
            child: Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
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
