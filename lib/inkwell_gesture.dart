import 'package:flutter/material.dart';

class InkWellGesture extends StatefulWidget {
  const InkWellGesture({ Key? key }) : super(key: key);

  @override
  _InkWellGestureState createState() => _InkWellGestureState();
}

class _InkWellGestureState extends State<InkWellGesture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inkwell & Gesture'),
      ),
      // body: Center(
      //   child: InkWell(
      //     child: CircleAvatar(
      //       backgroundColor: Colors.blue,
      //       radius: 60.0,
      //       child: Padding(
      //         padding: EdgeInsets.all(4),
      //         child: ClipRRect(
      //           borderRadius: BorderRadius.circular(60),
      //           child: Image.network(
      //             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo7goA_SlBqmLeiNz4k4F6OV2kZwgF8ybxbQ&usqp=CAU',
      //           ),
      //         ),
      //       ),
      //     ),
      //     onTap: () {
      //       print('OnTap method');
      //     },
      //     onLongPress: () {
      //       print('onLongPress method');
      //     },
      //     onDoubleTap: () {
      //       print('onDoubleTap method');
      //     },
      //   ),
      // ),
      body: Center(
        child: GestureDetector(
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 60.0,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo7goA_SlBqmLeiNz4k4F6OV2kZwgF8ybxbQ&usqp=CAU',
                ),
              ),
            ),
          ),
          onTap: () {
            print('OnTap method');
          },
          onLongPress: () {
            print('onLongPress method');
          },
          onDoubleTap: () {
            print('onDoubleTap method');
          },
          onLongPressEnd: (details) {
            print('onLongPressEnd method ${details.globalPosition}');
          },
        ),
      ),
    );
  }
}