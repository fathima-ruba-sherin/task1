import 'package:flutter/material.dart';

class Log2 extends StatefulWidget {
  const Log2({Key? key}) : super(key: key);

  @override
  State<Log2> createState() => _Log2State();
}

class _Log2State extends State<Log2> {
  final e=TextEditingController();
  final ee=TextEditingController();
  final eee=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("LOGIN",
            style: TextStyle(fontSize:17,color:Colors.indigo,fontWeight:FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: e,
              decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "E-mail",
                hintText: "enter your email",
              ),
              validator: (val){
                if(val!.isEmpty){
                  return "Email cant be empty";
                }else if (val.length<8){
                  return "enter valid email";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ee,
              decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Password",
                hintText: "enter your password",
                suffixIcon: Icon(Icons.remove_red_eye),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: eee,
              decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Re-enter",
                hintText: "Re-enter your password",
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              obscureText: true,
              validator: (val){
                if(val!.isEmpty){
                  return "re-enter the password";
                }else if (val.length<8){
                  return "rpassword must have atleast 8-charector";
                }
                return null;
              },
            ),
          ),
          TextButton(onPressed: (){}, child: Text("Forgot password",
            style:TextStyle(fontSize:10,color:Colors.indigo,fontWeight:FontWeight.w300),),),
          ElevatedButton(onPressed: (){
          }, child: Text("LOGIN",),),
          Center(
            child: Row(children: [
                Icon(Icons.facebook_sharp),
                Icon(Icons.snapchat),
                Icon(Icons.shop_2_sharp),
            ],),
          ),
          TextButton(onPressed: (){
          }, child:Text("sign up",
            style:TextStyle(fontSize:10,color:Colors.indigo,fontWeight:FontWeight.w300),
          ),),

        ],)
      ,
    );
  }
}
