import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class WhatsappStatusBorderExample extends StatefulWidget {
  const WhatsappStatusBorderExample({super.key});

  @override
  State<WhatsappStatusBorderExample> createState() =>
      _WhatsappStatusBorderExampleState();
}

class _WhatsappStatusBorderExampleState
    extends State<WhatsappStatusBorderExample> {
  var statusList = {
    0: ["user 0", "assets/images/img0.jpg", 24, '1 minute ago', false],
    1: ["user 1", "assets/images/img1.jpg", 13, '20 minute ago', false],
    2: ["user 2", "assets/images/img2.jpg", 2, '28 minute ago', false],
    3: ["user 3", "assets/images/img3.jpg", 0, '53 minute ago', false],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border Like Whatsapp Status'),
      ),
      body: ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (context, index) {
          var userData = statusList[index]!;
          // var userLikes = userData[6]; // Directly access the integer value
          var statusc = userData[2] as int;
          return ListTile(
            leading: DottedBorder(
                borderType: BorderType.Circle,
                dashPattern: [100 / statusc, statusc == 1 ? 0 : 2],
                child: const CircleAvatar(backgroundColor: Colors.greenAccent)),
            title: Text(userData[0] as String),
            subtitle: Text(userData[3] as String),
          );
        },
      ),
    );
  }
}
