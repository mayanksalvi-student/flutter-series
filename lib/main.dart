import 'package:first_project/Widgets/34_shimmer_effect_like_yt.dart';
import 'package:first_project/Widgets/33_simple_shimmer_effect.dart';
import 'package:first_project/Widgets/32_bottom_sheet.dart';
import 'package:first_project/Widgets/31_pick_profile_image.dart';
import 'package:first_project/Widgets/30_simple_way_to_crop_image.dart';
import 'package:first_project/Widgets/29_image_cropper.dart';
import 'package:first_project/Widgets/28_pic_multiple_image.dart';
import 'package:first_project/Widgets/27_image_picker.dart';
import 'package:first_project/Widgets/26_cached_network_image.dart';
import 'package:first_project/Widgets/25_image.dart';
import 'package:first_project/Widgets/24_alert.dart';
import 'package:first_project/Widgets/23_tabbar.dart';
import 'package:first_project/Widgets/22_form.dart';
import 'package:first_project/Widgets/21_ailgn.dart';
import 'package:first_project/Widgets/20_dropdown_list.dart';
import 'package:first_project/Widgets/19_bottom_navigation_bar_with_pageview.dart';
import 'package:first_project/Widgets/18_bottom_navigation_bar_with_widget_list.dart';
import 'package:first_project/Widgets/17_drawer.dart';
import 'package:first_project/Widgets/16_dismissible.dart';
import 'package:first_project/Widgets/15_snackbar.dart';
import 'package:first_project/Widgets/14_stack_positioned.dart';
import 'package:first_project/Widgets/13_padding.dart';
import 'package:first_project/Widgets/12_list_generate.dart';
import 'package:first_project/Widgets/11_list_view_separated.dart';
import 'package:first_project/Widgets/10_list_view_builder.dart';
import 'package:first_project/Widgets/35_shimmer_effect_on_text.dart';
import 'package:first_project/Widgets/37_dotted_border.dart';
import 'package:first_project/Widgets/38_whatsapp_status_border.dart';
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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    'ListView Widget': const ListViewWidget(),
    'ListView.Builder Example': const ListViewBuilderWidget(),
    'ListView.Separated Example': const SeparatedListViewWidget(),
    'ListView.generate ': const GenerateListExample(),
    'Padding Widget': const PaddingWidget(),
    'Stack and Positioned': const StackAndPositionedWidget(),
    'Snackbar Example': const SnackbarExample(),
    'Dismissible Widget': const DismissibleWidget(),
    'Drawer Example': DrawerExampe(),
    'Bottom Nav With Widget List Example': const BottomNavWithWidgetList(),
    'Bottom Nav With PageView Example': const BottomNavWithPageView(),
    'DropDown List': const DropdownMenuExample(),
    'Align Widget Example': const AlignWidgetExample(),
    'Form Example': const FormExample(),
    'TabBar Widget': const TabBarWidget(),
    'Alert Example': const AlertExample(),
    'Image Example': const ImageExample(),
    'Cached Network Image Example': const CacheNetworkImage(),
    'Image Picker': const ImagePicker3(),
    'Multiple Image Picker': const MultipleImagePicker(),
    'Image Cropper Example': const MainPage(),
    'Simple Way To Crop Image': const SimpleWayToCropImage(),
    'Pick Profile Image': const PickProfileImage(),
    'BottomSheetExample': const BottomSheetExample(),
    'Simple Shimmer Effect Example': const ShimmerEffectExample(),
    'Shimmer Effect Like Youtube': const ShimmerEffectLikeYoutube(),
    'Text Shimmer Effect Example': const TextShimmerEffectExample(),
    'Dotted Border Example': const DottedBorderExample(),
    'Border Like Whatsapp Status': const WhatsappStatusBorderExample(),
  };

  late List<String> keys;
  late List<dynamic> values;

  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    keys = widgetMap.keys.toList();
    values = widgetMap.values.toList();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<dynamic> _filteredValues(String searchText) {
    if (searchText.isEmpty) {
      return values;
    } else {
      return values
          .where((value) =>
              value.toString().toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Widgets')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: (text) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: 'Search here...',
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {});
                        },
                      )
                    : null,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredValues(_searchController.text).length,
              itemBuilder: (context, index) {
                final value = _filteredValues(_searchController.text)[index];
                final key = keys[values.indexOf(value)];
                return AddButton(
                  buttonText: '$index. $key',
                  routeClass: value,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  final Widget routeClass;
  final String buttonText;
  const AddButton(
      {Key? key, required this.buttonText, required this.routeClass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.centerLeft,
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
