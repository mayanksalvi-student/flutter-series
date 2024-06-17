import 'package:flutter/material.dart';

class AlertExample extends StatefulWidget {
  const AlertExample({super.key});

  @override
  State<AlertExample> createState() => _AlertExampleState();
}

class _AlertExampleState extends State<AlertExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Dialogue Box')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMyDialog(context);
          },
          child: const Text('Show Alert'),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
          
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
          contentTextStyle: const TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          elevation: 50,
          scrollable: false,
          buttonPadding: const EdgeInsets.all(90),
          title: const Text('This is an alert'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [Text('This is a demo'), Text('This is one more text')],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(onPressed: () {}, child: const Text('Approve')),
          ],
        );
      });
}
