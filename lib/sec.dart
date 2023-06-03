import 'package:flutter/material.dart';
import 'package:pro2/fis.dart';

class Se extends StatefulWidget {
  const Se({Key? key}) : super(key: key);

  @override
  State<Se> createState() => _SeState();
}

class _SeState extends State<Se> {
  final fn=TextEditingController();
  final ln=TextEditingController();
  final el=TextEditingController();
  final mb=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER"),
        centerTitle: true,
      ),
      body:
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: fn,
            decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: " FIRST NAME",
              hintText: "enter your first name",),
            validator: (val){
              if(val!.isEmpty){
                return " first name cant be empty";
              }else if (val.length<8){
                return "first  name must need";
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: ln,
            decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: "LAST NAME",
              hintText: "enter your last name",),
            validator: (val){
              if(val!.isEmpty){
                return "last name cant be empty";
              }else if (val.length<8){
                return " last name must need";
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: el,
            decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: "E-mail",
              hintText: "enter your email",
            ),
            validator: (v){
              if(v!.isEmpty){
                return "E-mail cant be emty";
              }
              else if(v.length<8){
                return "enter valid email";
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: mb,
            decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: "MOBILE NO",
              hintText: "enter your mobile number",
              suffixIcon: Icon(Icons.phone)
            ),

            validator: (val){
              if(val!.isEmpty){
                return "mobile number cant be empty";
              }else if (val.length<8){
                return "mobile number must be atleast 10 digits long";
              }
              return null;
            },
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(fixedSize: Size(200, 50)),
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Fi()));
          }, child: Text("Register"))
      ],),
    );
  }
}
