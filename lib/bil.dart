import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro2/feed.dart';
import 'package:pro2/ta.dart';

import 'mar.dart';

class It extends StatefulWidget {
  const It({Key? key}) : super(key: key);

  @override
  State<It> createState() => _ItState();
}

class _ItState extends State<It> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      centerTitle: true,
      leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.notifications),
        ],
      ),
      body:
        ListView(children: [
            Card(
              child: ListTile(
              title: Text("view mark"),
              trailing:Icon(Icons.arrow_forward_ios_rounded),
                onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Mrk()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("view exam timetable"),
                trailing:Icon(Icons.arrow_forward_ios_rounded) ,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Time()));
          },
            ),
            ),
            Card(
              child: ListTile(
                title: Text("view feedback"),
                trailing:Icon(Icons.arrow_forward_ios_rounded) ,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Fee()));
                },
              ),
            ),
       ],
      ),

    );
  }
}
