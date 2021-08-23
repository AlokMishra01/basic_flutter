import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.orange,
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
        children: [
        
          Container(
            width: 50,
              color: Colors.green,
            ),
          Expanded(
            child:  Container(
              color: Colors.red,
            ),
          )  
        
        ],
      ),
        ),
    );
  }
}