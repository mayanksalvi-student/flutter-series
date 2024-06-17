import 'package:flutter/material.dart';

class SnackbarExample extends StatelessWidget {
  const SnackbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is snackbar')));
              },
              child: const Text('Show Simple Snackbar'),
            ),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is desined snackbar'),
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {
                        print('Snackbar action clicked');
                      },
                    ),
                    backgroundColor: Colors.pink.shade400,
                    duration: const Duration(milliseconds: 3500),
                    behavior: SnackBarBehavior.floating,

                    // we can't use with and margin together

                    // margin: EdgeInsets.only(bottom: 0.0),
                    padding: const EdgeInsets.all(20),
                    width: 380.0, // Width of the SnackBar.
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5.0,
                    showCloseIcon: true,
                    closeIconColor: Colors.black,
                    onVisible: () {
                      print('Snackbar Is Visibled');
                    },
                    // dismissDirection: DismissDirection.up,
                    // clipBehavior: Clip.antiAlias,
                    // actionOverflowThreshold:
                  ),
                );
              },
              child: const Text('Show Desined Snackbar'),
            )
          ],
        ),
      ),
    );
  }
}
