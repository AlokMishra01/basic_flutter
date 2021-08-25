import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer Menu'),),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Books'),
            ),
            ListTile(
              leading: Icon(Icons.power),
              title: Text('Logout'),
            ),
          ],
        ),
      ),

      body: Container(
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              showDialog(
                context: context, 
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 300,
                      child: Text('This is dialog'),
                    ),
                  );
                },
              );
            }, 
            child: Text('Dialog'),
          ),
          TextButton(
            onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('This is snackbar'),
                duration: Duration(seconds: 5),
                backgroundColor: Colors.red,
              ),
            );
            }, 
            child: Text('Snackbar'),
          ),
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context, 
                backgroundColor: Colors.red,
                enableDrag: false,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(48),
                  ),
                ),
                builder: (context) {
                  return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(24),
                          child: Container(
                          height: 10,
                          width: 100,
                          color: Colors.blue,
                        ),
                        ),
                        Expanded(child: Column(
                    children: [
                      Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
                      Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
                      Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
                      Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
                      
                    ],
                  ),)
                
                      ],
                    );
                },
              );
            }, 
            child: Text('Bottom Modal'),
          ),
        ],
      ),
      ),
    );
  }
}