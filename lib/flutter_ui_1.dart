import 'package:flutter/material.dart';

class FlutterUI1 extends StatefulWidget {
  const FlutterUI1({ Key? key }) : super(key: key);

  @override
  _FlutterUI1State createState() => _FlutterUI1State();
}

class _FlutterUI1State extends State<FlutterUI1> {
  int _bottomNavIndex = 0;
  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll([
      _messagePage, /// 0 index
      _contactPage, /// 1 index
      _profilePage, /// 2 index
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Contacts',
          style: TextStyle(
            color: Colors.black,
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (index) {
          _bottomNavIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: 'Messages'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_phone,
            ),
            label: 'Contacts'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile'
          ),
        ],

      ),

      body: _pages[_bottomNavIndex],
    );
  }

  Widget _messagePage = 
    Center(
      child: Text(
        'Message Page',
        textAlign: TextAlign.center,
      ),
    );

  Widget _contactPage = ListView.separated(
    itemCount:  contacts.length,
    separatorBuilder: (context, index) {
      return Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey,
        margin: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
      );
    },
    itemBuilder: (context, index) {
      return ListTile(
        /// Leading Part
        leading: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo7goA_SlBqmLeiNz4k4F6OV2kZwgF8ybxbQ&usqp=CAU',
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
            ),
          ],
        ),

        /// Title
        title: Text(
          '${contacts[index].name}',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        /// Sub title
        subtitle: Text(
          '${contacts[index].title}',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),

        /// Trailing
        trailing: MaterialButton(
          color: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          visualDensity: VisualDensity.compact,
          child: Text(
            'Share',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
            print('$index is Shared');
          },
        ),
      );
    },
  );

  Widget _profilePage = Container(
    child: Center(
      child: Text('Profile Page'),
    ),
  );
}


class Contacts {
  String? name;
  String? title;

  Contacts({this.name, this.title});
}

List<Contacts> contacts = [
    Contacts(
      name: 'John Doe',
      title: 'CEO',
    ),
    Contacts(
      name: 'Alok Mishra',
      title: 'Developer',
    ),
    Contacts(
      name: 'Anil Sharma',
      title: 'Chairman',
    ),
    Contacts(
      name: 'Ram Karki',
      title: 'Admin',
    ),
  ];