import 'package:basic_flutter/image.dart';
import 'package:basic_flutter/multi/colum_view.dart';
import 'package:basic_flutter/multi/row_view.dart';
import 'package:basic_flutter/multi/wrap_view.dart';
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
      home: WrapView(),
    );
  }
}