import 'package:flutter/material.dart';

class TapPage extends StatelessWidget {
  const TapPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9, 
      child: Scaffold(
      appBar: AppBar(
        title: Text('Tab bar'),
        bottom: TabBar(
          isScrollable: true,
          tabs: [
            Tab(icon: Icon(Icons.home),text: 'Home',),
            Tab(icon: Icon(Icons.add),),
            Tab(icon: Icon(Icons.dock),),
            Tab(icon: Icon(Icons.domain),),
            Tab(icon: Icon(Icons.domain),),
            Tab(icon: Icon(Icons.domain),),
            Tab(icon: Icon(Icons.domain),),
            Tab(text: 'text only',),
            Text('last'),
          ],
          onTap: (index) {
            print(index);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            child: TabBar(
          isScrollable: true,
          tabs: [
            Tab(icon: Icon(Icons.domain_sharp),text: 'H',),
            Tab(icon: Icon(Icons.add),),
            Tab(icon: Icon(Icons.dock),),
            Tab(icon: Icon(Icons.domain),),
            Tab(icon: Icon(Icons.domain),),
            Tab(icon: Icon(Icons.domain),),
            Tab(icon: Icon(Icons.domain),),
            Tab(text: 'text only',),
            Text('last'),
          ],
          onTap: (index) {
            print(index);
          },
        ),
          ),
        Expanded(
          child: TabBarView(
        children: [
          Center(
            child: Icon(Icons.home),
          ),
          Center(
            child: Icon(Icons.add),
          ),
          Center(
            child: Icon(Icons.dock),
          ),
          Center(
            child: Icon(Icons.domain),
          ),
          Center(
            child: Icon(Icons.domain),
          ),
          Center(
            child: Icon(Icons.domain),
          ),
          Center(
            child: Icon(Icons.domain),
          ),
          Center(
            child: Icon(Icons.domain),
          ),
          Center(
            child: Icon(Icons.domain),
          )
        ],
      ),
        
        ),
        ],
      ),
    ),
    );
  }
}