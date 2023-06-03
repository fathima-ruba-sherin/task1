import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lidtr extends StatefulWidget {
  const Lidtr({Key? key}) : super(key: key);

  @override
  State<Lidtr> createState() => _LidtrState();
}

class _LidtrState extends State<Lidtr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(

          itemBuilder: (context,index){
            return  ListTile(
              title: Text("gfvgjfg"),
              subtitle: Text("gfgjf"),
            );
          },
          separatorBuilder: (context,index){
            return Divider(thickness: 4,
            );
          },
          itemCount: 101),
    );
  }
}
