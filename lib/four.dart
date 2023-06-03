import 'package:flutter/material.dart';
import 'package:pro2/fiv.dart';

class Fr extends StatefulWidget {
  const Fr({Key? key}) : super(key: key);

  @override
  State<Fr> createState() => _FrState();
}

class _FrState extends State<Fr> {
  final tha=TextEditingController();
  final th=TextEditingController();
  final t=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY TASK"),
        centerTitle: true,
      ),
      body:
      Column(
        children: [
          Row(children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(width: 200,
               child: TextFormField(
                 controller: tha,
                 decoration: InputDecoration(border: OutlineInputBorder()),
               ),
             ),
           ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Fiv()));
            }, child: Text("edit")),

            IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
          ],),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 200,
                child: TextFormField(
                  controller: th,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Fiv()));
            }, child: Text("edit")),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
          ],),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 200,
                child: TextFormField(
                  controller: t,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Fiv()));
            }, child: Text("edit")),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
          ],),
          ElevatedButton(onPressed: (){}, child: Text("submit"))
        ],
      )
    );
  }
}
