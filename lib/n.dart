import 'package:flutter/material.dart';

class Ne extends StatefulWidget {
  const Ne({Key? key}) : super(key: key);

  @override
  State<Ne> createState() => _NeState();
}

class _NeState extends State<Ne> {
  final list=[
    'kannur','palakkad','kozhikod','idukki'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
         DropdownButtonFormField(

           hint: Text("select"),
             items:list.map((e){
               return DropdownMenuItem(
                   value: e,
                   child:Text(e));
             }).toList(),
             onChanged:(value){},
         ),
        ],),
      ),
    );
  }
}
