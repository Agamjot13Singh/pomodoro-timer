/// Flutter code sample for DropdownButton.style

// This sample shows a `DropdownButton` with a dropdown button text style
// that is different than its menu items

import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';

class SettingsDropDownWidget extends StatefulWidget {
  @override
  State<SettingsDropDownWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with SettingsDropDownWidget.
class _MyStatefulWidgetState extends State<SettingsDropDownWidget> {
  List<String> options = <String>[
    '10',
    '15',
    '20',
    '25',
    '30',
  ];
  String dropdownValue = '25';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      child: DropdownButton<String>(
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        style: const TextStyle(color: Colors.blue),
        selectedItemBuilder: (BuildContext context) {
          return options.map((String value) {
            return Text(
              dropdownValue,
              style: const TextStyle(color: Colors.white),
            );
          }).toList();
        },
        items: options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
