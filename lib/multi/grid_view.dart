import 'package:flutter/material.dart';

class GrigViewPage extends StatelessWidget {
  const GrigViewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid View'),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1.5,
        ),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: index % 2 == 0 ? Colors.green : Colors.red,
            child: Center(
              child: Text(
                '$index',
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}