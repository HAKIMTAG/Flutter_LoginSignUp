import 'package:cowino/screens/login/ourlogin.dart';
import 'package:flutter/material.dart';

import './utiles/ourTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: OurTheme().buildTheme(),
      home: Scaffold(body: Ourlogin()),
    );
  }
}
