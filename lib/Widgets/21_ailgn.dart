import 'package:flutter/material.dart';

class AlignWidgetExample extends StatelessWidget {
  const AlignWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align Widget')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: Offset(1, 2), blurRadius: 20, color: Colors.grey)
              ]),
          child: const Align(
            // alignment: Alignment.bottomCenter,
            // alignment: Alignment.bottomLeft,
            // alignment: Alignment.bottomRight,
            // alignment: Alignment.center,
            // alignment: Alignment.centerLeft,
            // alignment: Alignment.centerRight,
            // alignment: Alignment.topCenter,
            // alignment: Alignment.topLeft,
            // alignment: Alignment.topRight,

            alignment: FractionalOffset(0.2, 0.6),
            child: Icon(
              Icons.person_4_rounded,
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
