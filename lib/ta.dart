import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("TIME TABLE"),
      centerTitle: true,
      ),

     body:

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
             Column(children: [
           Text("DATE"),
           Text("06-05-23"),
           Text("09-05-23"),
           Text("12-05-23"),
           Text("20-05-23"),
               ],),
               SizedBox(
                 width: 150,
                 height: 50,
               ),
               Column(children: [
               Text("SUBJECT"),
               Text("WP"),
               Text("AD"),
               Text("DS"),
               Text("OOPS"),

       ],)
    ],),
         ),


    );
  }
}
