import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: l.length,
          separatorBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 20,
              color: Colors.white,
              child: Text('Hello'),
            );
          },
          itemBuilder: (context, index) {
            return Text(
            l[index],
            style: TextStyle(
              fontSize: 50,
            ),
          );
          },  
      ),
      )
    );
  }
}

List<String> l = [
  'One', 'Two', 'Three',
];