import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pro2/te.dart';

class Taa extends StatefulWidget {
  const Taa({Key? key}) : super(key: key);

  @override
  State<Taa> createState() => _TaaState();
}

class _TaaState extends State<Taa> {
  final na=TextEditingController();
  final dat=TextEditingController();
  final tim=TextEditingController();
  final day=[
    'sunday','monday','tuesday','wednesday','thursday','friday','starday'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        centerTitle: true,
        leading: Icon(Icons.more_time),
      ),
      body:
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: na,
            decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: "  NAME",
              hintText: "enter your name"),
            validator: (val){
              if(val!.isEmpty){
                return " name cant be empty";
              }else if (val.length<8){
                return "  name must needed";
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: dat,
            decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Date",
                suffixIcon: Icon(Icons.calendar_month)
            ),
            onTap: () async {
              DateTime?datepick=await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2010),
                  lastDate: DateTime(2025));
              if(datepick!=null){
                print(datepick);
                String formatdate=
                DateFormat("yyyy-MM-dd").format(datepick);
                print(formatdate);
                setState(() {
                  dat.text=formatdate;
                });
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: tim,
            decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Time",
                suffixIcon: Icon(Icons.timelapse)
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
                  tim.text=formattedTime;
                });
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonFormField(

            hint: Text("select day"),
            items:day.map((e){
              return DropdownMenuItem(
                  value: e,
                  child:Text(e));
            }).toList(),
            onChanged:(value){},
          ),
        ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Tex()));
        }, child: Text("submit")),
      ],),
    );
  }
}
