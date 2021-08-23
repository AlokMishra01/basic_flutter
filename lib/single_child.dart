import 'package:flutter/material.dart';

class SingleChild extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Class'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.add_alarm_rounded),
          Icon(
            Icons.add_box,
            color: Colors.purple,
            size: 48,          
          ),
        ],
      ),
      body: Center(
        child: Card(
          color: Colors.teal,
          elevation: 40,
          margin: EdgeInsets.all(40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child: SizedBox(
            height: 300,
            width: 350,
            child: Center(
              child: LinearProgressIndicator(
                color: Colors.red,
                backgroundColor: Colors.purple,
              ),
            ),
          ),
        ),
      //   child: Container(
      //   height: 200,
      //   width: 200,
      //   decoration: BoxDecoration(
      //     color: Colors.deepOrange,
      //     borderRadius: BorderRadius.horizontal(
      //       left: Radius.circular(50),
      //     ),
      //     border: Border.all(
      //       color: Colors.blueAccent,
      //       width: 8,
      //       style: BorderStyle.solid,
      //     ),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.red,
      //         blurRadius: 50,
      //       ),
      //     ]
      //   ),
        
      //   // child: Padding(
      //   //   padding: EdgeInsets.only(
      //   //     top: 30,
      //   //     left: 10,
      //   //   ),
      //   //   child: RichText(
      //   //     textAlign: TextAlign.right,
      //   //     overflow: TextOverflow.fade,
      //   //     text: TextSpan(
      //   //       text: 'Flutter Class kdsjf dnfskljvdjmf jerjojreg ksaljj jsdjfj j jjfdjv ndjfgjfjb fdj',
      //   //       style: TextStyle(
      //   //         color: Colors.white,
      //   //         fontSize: 30,
      //   //       ),
      //   //       children: [
      //   //         TextSpan(
      //   //           text: 'One',
      //   //           style: TextStyle(
      //   //             color: Colors.purple,
      //   //             fontSize: 30,
      //   //           )
      //   //         ),
      //   //         TextSpan(
      //   //           text: 'Two',
      //   //           style: TextStyle(
      //   //             color: Colors.yellow,
      //   //             fontSize: 30,
      //   //           )
      //   //         )
      //   //       ]
      //   //     ),
      //   //   ),
      //     // child: Text(
      //     // 'Flutter',
      //     // style: TextStyle(
      //     //   fontSize: 38,
      //     //   color: Colors.white,
      //     //   decoration: TextDecoration.lineThrough,
      //     //   fontWeight: FontWeight.bold,
      //     //   fontStyle: FontStyle.italic,
      //     // ),
      //     // ),
      //   // ),
      // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
  
}