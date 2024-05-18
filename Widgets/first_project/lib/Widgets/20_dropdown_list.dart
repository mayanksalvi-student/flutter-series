import 'package:flutter/material.dart';

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  List<Map<String, String>> coursesList = [
    {'value': '1', 'title': 'BCA'},
    {'value': '2', 'title': 'MCA'},
    {'value': '3', 'title': 'B.Tech'},
    {'value': '4', 'title': 'M.Tech'},
    {'value': '5', 'title': 'DCA'},
    {'value': '6', 'title': 'PGDCA'},
  ];

  String selectedCourse = ''; // Default value is an empty string
  bool isCourseSelected = true; // Variable to track validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropDown Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              // isDense: true,
              isExpanded: true,
              value: selectedCourse.isEmpty ? null : selectedCourse,
              hint: const Text('Select Course'),
              items: [
                const DropdownMenuItem<String>(
                  value: '',
                  child: Text('Select Course'),
                ),
                ...coursesList.map<DropdownMenuItem<String>>((course) {
                  return DropdownMenuItem<String>(
                    value: course['value'],
                    child: Text(course['title']!),
                  );
                }),
              ],
              onChanged: (String? value) {
                setState(() {
                  selectedCourse = value ?? '';
                  isCourseSelected = selectedCourse.isNotEmpty;
                });
              },
            ),
            if (!isCourseSelected)
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Please select a course.',
                  style: TextStyle(color: Colors.red),
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Selected course $selectedCourse',
                  style: const TextStyle(color: Colors.indigo),
                ),
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isCourseSelected = selectedCourse.isNotEmpty;
                });
                if (isCourseSelected) {
                  // Proceed with form submission or other logic
                  print('Selected Course: $selectedCourse');
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

