import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Neww extends StatefulWidget {
  const Neww({Key? key}) : super(key: key);

  @override
  State<Neww> createState() => _NewwState();
}

class _NewwState extends State<Neww> {
  final usr=TextEditingController();
  final pas=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: usr,
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
                    usr.text=formatdate;
                  });
                }
              },
            ),
          ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: pas,
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
                pas.text=formattedTime;
              });
            }
          },
        ),
      ),
          ElevatedButton(onPressed: (){
          }, child: Text("submit")),
    ],

      ),
    );
  }
}
