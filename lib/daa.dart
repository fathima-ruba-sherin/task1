import 'package:flutter/material.dart';

class Dd extends StatefulWidget {
  const Dd({Key? key}) : super(key: key);

  @override
  State<Dd> createState() => _DdState();
}

class _DdState extends State<Dd> {
  final aa=TextEditingController();
  final bb=TextEditingController();
  final cc=TextEditingController();
  final dd=['sun','mon','tue','wed','thu','fri','sat'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        centerTitle: true,
      ),
      body:
      Column(children: [
        TextFormField(
          controller: aa,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "name",
            hintText: "enter your name",
          ),
          validator: (va){
            if(va!.isEmpty)
              {
                return " name cant be empty";
              }
            else if(va.length<8)
              {
                return "name must need ";
              }
            return null;
          },
        ),
        TextFormField(
          controller: bb,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Date",
          ),
        ),

      ],),
    );
  }
}
