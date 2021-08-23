import 'package:flutter/material.dart';

class WrapView extends StatelessWidget {
  const WrapView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 20,
          runSpacing: 10,
          alignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.end,
        children: [

          Container(
            width: 100,
            height: 50,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 500,
            color: Colors.green,
          ),
          
          Container(
            width: 50,
            height: 250,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.orange,
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.purple,
          ),
        ],
      ),
      )
    );
  }
}