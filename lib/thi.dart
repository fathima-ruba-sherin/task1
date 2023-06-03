import 'package:flutter/material.dart';
import 'package:pro2/four.dart';

class Th extends StatefulWidget {
  const Th({Key? key}) : super(key: key);

  @override
  State<Th> createState() => _ThState();
}

class _ThState extends State<Th> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        centerTitle: true,
        actions: [
          Icon(Icons.logout)
        ],
      ),
      body:
        ListView(children:[
          Card(
            child: ListTile(
              title: Text("UI DESIGN"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Fr()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("FLUTTER"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Fr()));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("MERN"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Fr()));
              },
            ),
          ),
    ],
        ),



    );
  }
}
