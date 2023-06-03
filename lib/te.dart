import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pro2/bil.dart';
import 'package:pro2/re.dart';

class Tex extends StatefulWidget {
  const Tex({Key? key}) : super(key: key);

  @override
  State<Tex> createState() => _TexState();
}

class _TexState extends State<Tex> {
  final formkey=GlobalKey<FormState>();
  final user=TextEditingController();
  final pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [Icon(Icons.logout)],
      ),
      body:
     SafeArea(
       child: Form(
         key:formkey ,
         child: Column(
           children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: user,
                   decoration:InputDecoration(border: OutlineInputBorder(),
                   labelText: "username",
                     hintText: "enter username"
                   ),
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
               padding: const EdgeInsets.all(15.0),
               child: TextFormField(
                 controller: pass,
                    decoration:InputDecoration(border: OutlineInputBorder(),
                        labelText: "password",
                        hintText: "enter password"
                    ),
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
             ElevatedButton(onPressed:(){
               // if(formkey.currentState!.validate()) {
               //   debugPrint("all validate passed");
                  Navigator.push(
                     context, MaterialPageRoute(builder: (context) => It()));
                  Fluttertoast.showToast(msg: "login Successfully");
               // }
               },child: Text("LOGIN")),
              TextButton(onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Reg()));
              },child: Text("SIGNUP")),
           ],
    ),
       ),
     ),
    );
  }
}

