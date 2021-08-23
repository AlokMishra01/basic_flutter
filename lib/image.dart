import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
          'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492__480.jpg',
          width: 200,
          height: 400,
          fit: BoxFit.cover,
        ),
          ),
      
      ),
    );
  }
}