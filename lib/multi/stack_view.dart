import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 600,
        color: Colors.purple,
        child: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.loose,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),Text(
            'This is flutter clas',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
            ),
        
        
        ],
      ),
      ),
    );
  }
}