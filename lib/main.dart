import 'package:basic_flutter/bittons_view.dart';
import 'package:basic_flutter/bottom_nav_bar.dart';
import 'package:basic_flutter/drawer_view.dart';
import 'package:basic_flutter/drop_down_button.dart';
import 'package:basic_flutter/flutter_ui_1.dart';
import 'package:basic_flutter/form_fields.dart';
import 'package:basic_flutter/inkwell_gesture.dart';
import 'package:basic_flutter/list_view.dart';
import 'package:basic_flutter/multi/grid_view.dart';
import 'package:basic_flutter/multi/stack_view.dart';
import 'package:basic_flutter/tab_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormFields(),
    );
  }
}