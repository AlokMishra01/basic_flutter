import 'package:flutter/material.dart';

class ButtonsView extends StatefulWidget {
  const ButtonsView({ Key? key }) : super(key: key);

  @override
  _ButtonsViewState createState() => _ButtonsViewState();
}

class _ButtonsViewState extends State<ButtonsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
          ),
          Text(
            'Button Types',
            
          ),
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              'Text Button',
              style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
            ),
            ),
            Icon(Icons.contact_mail),
              ],
            ),
            onPressed: () {
              print('Text Button is pressed');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              )
            ),
          ),
          ElevatedButton(
            child: Text('This is Eleveted Button'),
            onPressed: () {
              print('Eleveted Button is pressed');
            },
            onLongPress: () {
              print('Eleveted Button is long pressed');
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onSurface: Colors.red,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              print('Outlined Button is pressed');
            },
            child: Text('Outlined Button'),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.red,
                width: 4,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ), 
            ),
          ),
          MaterialButton(
            child: Text(
              'Material Button'
            ),
            onPressed: () {
              print('Material Button is pressed');
            },
            color: Colors.red,
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ), 
          ),

          IconButton(
            onPressed: () {
              print('Icon Button is pressed');
            },
            icon: Icon(
              Icons.add,
            ),
            color: Colors.blue,
            iconSize: 36,
            tooltip: 'Icon Button',
          ),
        ],
      ),
    );
  }
}