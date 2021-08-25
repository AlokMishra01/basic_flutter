import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          
          itemBuilder: (context, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                'images/mt.jpg',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
              ),
              title: Text('9869050723'),
              subtitle: Text('Alok Mishra Nameste Alok Mishra Nameste Alok Mishra Nameste'),
              trailing: Icon(Icons.call),
              isThreeLine: true,
              onTap: () {
                print('Hello');
              },
              enabled: false,
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