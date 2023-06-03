import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container
        (child: Center(child: Text("hello")),
          height: 200, width: 200,
          color: Colors.grey)
      ),
    );
  }

}
