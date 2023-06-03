import 'package:flutter/material.dart';

class Ex extends StatefulWidget {
  const Ex({Key? key}) : super(key: key);

  @override
  State<Ex> createState() => _ExState();
}

class _ExState extends State<Ex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        centerTitle: true,
        leading: Icon(Icons.abc),
        actions: [
          Icon(Icons.abc_sharp),
          Icon(Icons.ac_unit),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text( style: TextStyle(fontSize: 80),"FLUTTER"),
            SizedBox(height: 50),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                   children:[
                     Container( child: Center(child: Text("EJHIEUHIERUNFI")),
                          width: 150, height: 100, color: Colors.lightBlueAccent,),
                     SizedBox( width: 100),

                     Container ( child: Center(child: Text("EJHIEUHIERUNFI")),
                         width: 150, height: 100, color: Colors.lightBlueAccent,),
                       SizedBox(width: 100),
                         Container(  child: Center(child: Text("EJHIEUHIERUNFI")),
                            width: 150, height: 100, color: Colors.lightBlueAccent,),

                      ],
                    ),
              ],
              ),
      ),
    );
  }
}
