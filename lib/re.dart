import 'package:flutter/material.dart';
import 'package:pro2/te.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  final fkey=GlobalKey<FormState>();
  final name=TextEditingController();
  final lname=TextEditingController();
  final email=TextEditingController();
  final mob=TextEditingController();
  final us=TextEditingController();
  final pa=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRATION FORM"),
        centerTitle: true,
      ),
      body:
      Form(
        key: fkey,
        child: Column(children:[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: name,
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
            controller: lname,
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
              controller: email,
              decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "E-MAIL",
                hintText: "enter your mail",),
              validator: (val){
                if(val!.isEmpty){
                  return "Email cant be empty";
                }else if (val.length<8){
                  return "enter valid Email ";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: mob,
              decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "MOBILE NO",
                hintText: "enter your mobile number",),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: us,
              decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "USERNAME",
                hintText: "enter your username",),
              validator: (val){
                if(val!.isEmpty){
                  return "username cant be empty";
                }else if (val.length<8){
                  return "username must be atleast 8 charectors long";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: pa,
              decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "PASSWORD",
                hintText: "enter your password",
              suffixIcon: Icon(Icons.remove_red_eye)),
              obscureText: true,
              validator: (val){
                if(val!.isEmpty){
                  return "password cant be empty";
                }else if (val.length<8){
                  return "password must be atleast 8 charectors long";
                }
                return null;
              },

            ),
          ),
          ElevatedButton(onPressed: (){
      if(fkey.currentState!.validate()) {
        debugPrint("all validate passed");
        Navigator.push(context, MaterialPageRoute(builder: (context) => Tex()));
      }
    },child: Text("submit")),
    ],
      ),

    ),
    );
  }
}
