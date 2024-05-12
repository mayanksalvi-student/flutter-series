import 'package:flutter/material.dart';

class StackAndPositionedWidget extends StatelessWidget {
  const StackAndPositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StackAndPositionedWidget')),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              top: 80,
              left: 80,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Explanation:

// We have a Stack widget as the parent, which allows us to stack multiple widgets on top of each other.
// Inside the Stack, we have multiple Container widgets wrapped in Positioned widgets. The Positioned widget is used to position its child within the Stack.
// The first Container has a blue background and serves as the base of the stack.
// The second Container is positioned 50 pixels from the top and left of the Stack and has a red background.
// The third Container is positioned 50 pixels from the bottom and right of the Stack and has a green background.