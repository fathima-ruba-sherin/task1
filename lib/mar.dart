import 'package:flutter/material.dart';

class Mrk extends StatefulWidget {
  const Mrk({Key? key}) : super(key: key);

  @override
  State<Mrk> createState() => _MrkState();
}

class _MrkState extends State<Mrk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("view mark"),
    centerTitle: true,
        ),
            body:
            ListView(children:[
              ListTile(
              title:Text("student name :"),
          subtitle: Text("shybi"),
    ),
    ListTile(
      title: Text("student register number :"),
    subtitle: Text("21032586"),
    ),
    ListTile(
    title: Text("mark :"),
    subtitle: Text("72"),
    ),
    ]
    ),
    );
  }
}
