import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red,
          child: SizedBox(
          width: 300,
          height: 200,
          child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492__480.jpg', 
            fit: BoxFit.contain,
          ),
          Image.asset('images/mt.jpg'),
        
        ],
      ),
          )
        ),
        ),
    );
  }
}