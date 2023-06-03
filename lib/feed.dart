import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro2/su.dart';

class Fee extends StatefulWidget {
  const Fee({Key? key}) : super(key: key);

  @override
  State<Fee> createState() => _FeeState();
}

class _FeeState extends State<Fee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("VIEW FEEDBACK"),
      centerTitle: true,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),
     labelText: "SEND FEEDBACK",
            ),
            ),
          ),

      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sub()));
      },child: Text("submit")),
    ],
      ),
    );
  }
}
