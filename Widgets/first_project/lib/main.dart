import 'package:first_project/Widgets/16_dismissible.dart';
import 'package:first_project/Widgets/15_snackbar.dart';
import 'package:first_project/Widgets/14_stack_positioned.dart';
import 'package:first_project/Widgets/13_padding.dart';
import 'package:first_project/Widgets/12_list_generate.dart';
import 'package:first_project/Widgets/11_list_view_separated.dart';
import 'package:first_project/Widgets/10_list_view_builder.dart';
import 'package:first_project/Widgets/9_list_view.dart';
import 'package:first_project/Widgets/8_card_and_list_tile.dart';
import 'package:first_project/Widgets/7_buttons.dart';
import 'package:first_project/Widgets/6_row_column_wrap.dart';
import 'package:first_project/Widgets/5_rich_text.dart';
import 'package:first_project/Widgets/4_center.dart';
import 'package:first_project/Widgets/3_sizedbox.dart';
import 'package:first_project/Widgets/2_container.dart';
import 'package:first_project/Widgets/1_text.dart';
import 'package:first_project/default_counter_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Map<String, dynamic> widgetMap = {
    'Counter App': const MyHomePage(title: 'Counter App'),
    'Text Widget': const TextWidget(),
    'Container Widget': const ContainerWidget(),
    'SizedBox Widget': const SizedBoxWidget(),
    'Center Widget': const CenterWidget(),
    'Rich Text Widget': const RichTextWidget(),
    'Row, Column and Wrap Widget': const RowColumnAndWrapWidgets(),
    'Buttons Example': const ButtonsExample(),
    'Card and List Widget': const CardAndListTileWidget(),
    'List View Widget': const ListViewWidget(),
    'List View Builder Widget': const ListViewBuilderWidget(),
    'ListView Separated Widget': const SeparatedListViewWidget(),
    'ListView.generate ': const GenerateListExample(),
    'Padding Widget': const PaddingWidget(),
    'Stack and Positioned': const StackAndPositionedWidget(),
    'Snackbar Example': const SnackbarExample(),
    'Dismissible Widget': const DismissibleWidget(),
  };

  late List<String> keys;
  late List<dynamic> values;

  @override
  Widget build(BuildContext context) {
    keys = widgetMap.keys.toList();
    values = widgetMap.values.toList();
    return Scaffold(
      appBar: AppBar(title: const Text('All Widgets')),
      body: ListView.builder(
        itemCount: widgetMap.length,
        itemBuilder: (context, index) {
          return addButton(
            buttonText: keys[index],
            routeClass: values[index],
          );
        },
      ),
    );
  }
}

class addButton extends StatelessWidget {
  final Widget routeClass;
  final String buttonText;
  const addButton(
      {super.key, required this.buttonText, required this.routeClass});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.centerLeft,
      // height: 60,
      width: screenWidth,
      child: TextButton(
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 18),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => routeClass),
          );
        },
      ),
    );
  }
}
