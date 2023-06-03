import 'package:flutter/material.dart';
import 'package:pro2/sec.dart';
import 'package:pro2/te.dart';
import 'package:pro2/thi.dart';

class Fi extends StatefulWidget {
  const Fi({Key? key}) : super(key: key);

  @override
  State<Fi> createState() => _FiState();
}

class _FiState extends State<Fi> {
  final eml=TextEditingController();
  final pp=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body:
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: eml,
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
            controller: pp,
            decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: "password",
              hintText: "enter you password",
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            obscureText: true,
              validator: (v){
                if(v!.isEmpty){
                  return "password cant be emty";
                }
                else if(v.length<8){
                  return "enter strong password";
                }
                return null;
              },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(onPressed: (){
          }, child:Text("forgot password",
          style: TextStyle(fontSize: 14,color:Colors.indigo),)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 50)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Th()));
          }, child: Text("LOGIN")),
        ),
        Text("Dont have account?"),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Se()));
          }, child: Text("Sign up",
              style: TextStyle(color:Colors.indigo))),

      ],),
    );
  }
}
