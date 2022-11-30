import 'dart:math';

import 'package:flutter/material.dart';
import 'package:transgo/UI/Resetpassword.dart';
import 'package:transgo/UI/splashscreen.dart';
import 'package:transgo/UI/register.dart';
import 'package:transgo/UI/login.dart';
import 'package:transgo/UI/profil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterViz Demo',

      /// TODO Replace with your first screen class name
      home: splashscreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("My FlutterViz Demo"),
    );
  }
}
