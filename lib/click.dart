 import 'package:flutter/material.dart';

 class Click extends StatefulWidget {
  const Click({Key? key}) : super(key: key);

   @override
   State<Click> createState() => _ClickState();
 }

 class _ClickState extends State<Click> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
title: Text("flutter"),
         centerTitle: true,
         leading: Icon(Icons.arrow_upward_outlined) ,
         actions: [
           Icon(Icons.search),
           Icon(Icons.more_vert) ,
         ],
       ),
       body:
       Center(
         child:
              Column(
                   children: [
                     Text("open source"),
                     SizedBox(
                       height: 10,
                       width: 10,
                     ),
                     Text("dfrrdgdfg"),
                     SizedBox(
                       height: 10,
                       width: 10,
                     ),
                     Text("hbfyebgf"),
                     SizedBox(
                       height: 10,
                       width: 10,
                     ),

     Container(child: Center(child: Text("CLICK HERE"),),
          width: 150, height: 50,color: Colors.greenAccent,)
   ],
       ),
       ),
     );
}
 }
