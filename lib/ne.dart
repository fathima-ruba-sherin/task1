import 'package:flutter/material.dart';

class New1 extends StatefulWidget {
  const New1({Key? key}) : super(key: key);

  @override
  State<New1> createState() => _New1State();
}

class _New1State extends State<New1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
        return ListTile(
          title: Text("hello"),
          subtitle: Text("welcome"),
        );
      }),
    );
  }
}
