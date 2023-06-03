import 'package:flutter/material.dart';

class Fiv extends StatefulWidget {
  const Fiv({Key? key}) : super(key: key);

  @override
  State<Fiv> createState() => _FivState();
}

class _FivState extends State<Fiv> {
  final ma=TextEditingController();
  final m=TextEditingController();
  var a = 'task name';
  var b= 'Date';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
        centerTitle: true,
      ),
      body:
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [

       Row(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(width: 200,
               child: TextFormField(
                 initialValue: a,
                 decoration: InputDecoration(border: OutlineInputBorder(),),
               ),
             ),
           ),
         ],
       ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 200,
                child: TextFormField(
                  initialValue: b,
                  decoration: InputDecoration(border: OutlineInputBorder(),),
                ),
              ),
            ),
          ],
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("start time"
                ,style: TextStyle(fontSize:17,color:Colors.indigo),),
            ),
           SizedBox(
             width: 225,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
              child:  Text("end time"
                   ,style: TextStyle(fontSize:17,color:Colors.indigo),),
                ),
            ],
        ),
            Row(children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 200,
                child: TextFormField(
                  controller: ma,
                  decoration: InputDecoration(border: OutlineInputBorder(),),
                ),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 200,
                child: TextFormField(
                  controller: m,
                  decoration: InputDecoration(border: OutlineInputBorder(),),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: ElevatedButton(onPressed: (){

          }, child:Text("submit")),
        ),

      ],),
    );
  }
}
