import 'package:flutter/material.dart';
import 'package:pro2/click.dart';
import 'package:pro2/fis.dart';
import 'package:pro2/fiv.dart';
import 'package:pro2/four.dart';
import 'package:pro2/listsep.dart';
import 'package:pro2/login.dart';
import 'package:pro2/mar.dart';
import 'package:pro2/ne.dart';
import 'package:pro2/newo.dart';
import 'package:pro2/neww.dart';
import 'package:pro2/oo.dart';
import 'package:pro2/re.dart';
import 'package:pro2/sec.dart';
import 'package:pro2/task..dart';
import 'package:pro2/te.dart';
import 'package:pro2/thi.dart';
import 'package:pro2/tt.dart';

import 'bil.dart';
import 'li.dart';
import 'lo.dart';
import 'n.dart';
import 'new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:Fi(),
    );
  }
}
