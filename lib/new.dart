import 'package:flutter/material.dart';

class Adil extends StatefulWidget {
  const Adil({Key? key}) : super(key: key);

  @override
  State<Adil> createState() => _AdilState();
}

class _AdilState extends State<Adil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                        width: 200,height: 200,
                        color: Colors.red),
                     Container(
                        width: 200,height: 200,
                        color: Colors.green
                     ),

                ],
              ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              width: 200,height: 200,
              color: Colors.red),
          Container(
              width: 200,height: 200,
              color: Colors.green
          ),
        ],
      )

        ],
      ),
    );
  }
}
