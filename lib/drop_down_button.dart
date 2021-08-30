import 'package:flutter/material.dart';

class DropDownButtonView extends StatefulWidget {
  const DropDownButtonView({ Key? key }) : super(key: key);

  @override
  _DropDownButtonViewState createState() => _DropDownButtonViewState();
}

class _DropDownButtonViewState extends State<DropDownButtonView> {
  /// List of item to be selected
  /// variable to save selected item
  
  List<String> _fruits = [
    'Apple',
    'Orange',
    'Mange',
    'Banana',
    'Pine Apple',
    'Grapes',
  ];

  String? _selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected Fruit = $_selectedFruit'),
            DropdownButton(
          items: _fruits.map(
            (item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }
          ).toList(),
          value: _selectedFruit,
          onChanged: (value) {
            _selectedFruit = value.toString();
            setState(() {});
          },
          hint: Text('Plese Select Fruit from list'),
          ),
      
          ],
        )
      ),
    );
  }
}