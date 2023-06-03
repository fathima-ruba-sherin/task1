import 'package:flutter/material.dart';

class Tas extends StatefulWidget {
  const Tas({Key? key}) : super(key: key);

  @override
  State<Tas> createState() => _TasState();
}

class _TasState extends State<Tas> {
  final ta=TextEditingController();
  final da=TextEditingController();
  final st=TextEditingController();
  final en=TextEditingController();
  final de=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Task"),
        centerTitle: true,
        leading:Icon(Icons.arrow_back_ios_new),
        actions: [
          Icon(Icons.notifications)
        ],
      ),
      body:
        Column(crossAxisAlignment:CrossAxisAlignment.start,
          children: [
          Text("Task Name",
          style: TextStyle(fontSize:17,color:Colors.indigo,fontWeight:FontWeight.w800),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ta,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        Text("date & Time",
          style: TextStyle(fontSize:17,color:Colors.indigo,fontWeight:FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: da,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.calendar_month)
            ),
      onTap: () async {
          TimeOfDay?timepick=await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            initialEntryMode:TimePickerEntryMode.input,
          );
          if(timepick!=null){
            print(timepick);
            String formattedTime=timepick.format(context);
            print(formattedTime);
            setState(() {
              da.text=formattedTime;
            });
          }
      },
          ),
        ),
            Row(
              children: [
                Container(
                  height:10 ,
                  child:Column(children: [
                  Text("Start time"),
                    TextFormField(
                      controller: st,
                      decoration: InputDecoration(border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.arrow_drop_down)
                      ),
                      onTap: () async {
                        TimeOfDay?timepick=await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode:TimePickerEntryMode.input,
                        );
                        if(timepick!=null){
                          print(timepick);
                          String formattedTime=timepick.format(context);
                          print(formattedTime);
                          setState(() {
                            st.text=formattedTime;
                          });
                        }
                      },
                    ),
               ],),

            ),
                Container(
                  height:10 ,
                  child:Column(children: [
                    Text("end time"),
                    TextFormField(
                      controller: en,
                      decoration: InputDecoration(border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.arrow_drop_down)
                      ),
                      onTap: () async {
                        TimeOfDay?timepick=await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode:TimePickerEntryMode.input,
                        );
                        if(timepick!=null){
                          print(timepick);
                          String formattedTime=timepick.format(context);
                          print(formattedTime);
                          setState(() {
                            en.text=formattedTime;
                          });
                        }
                      },
                    ),
                  ],),

                ),
              ],)


    ],),
    );
  }
}
