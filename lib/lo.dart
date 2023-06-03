import 'package:flutter/material.dart';

class Lo extends StatefulWidget {
  const Lo({Key? key}) : super(key: key);

  @override
  State<Lo> createState() => _LoState();
}

class _LoState extends State<Lo> {
  final em=TextEditingController();
  final p=TextEditingController();
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
              controller: em,
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
              controller: p,
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
            child: TextButton(onPressed: (){}, child: Text("Forgot password",
            style:TextStyle(fontSize:10,color:Colors.indigo,fontWeight:FontWeight.w300),),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
            }, child: Text("LOGIN",),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                    Icon(Icons.facebook_sharp),
                    SizedBox(width: 5,),
                    Icon(Icons.snapchat),
                   SizedBox(width: 5,),
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
