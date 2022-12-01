import 'dart:math';

import 'package:flutter/material.dart';
import 'package:transgo/UI/Home.dart';
import 'package:transgo/UI/Resetpassword.dart';
import 'package:transgo/UI/splashscreen.dart';
import 'package:transgo/UI/register.dart';
import 'package:transgo/UI/login.dart';
import 'package:transgo/UI/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterViz Demo',
      debugShowCheckedModeBanner: false,

      /// TODO Replace with your first screen class name
      routes: {
      '/': (context) => splashscreen(),
      '/home': (context) => Home(),
      '/login' :(context) => const Login(),
      '/register': (context) => const Register()
    },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("My FlutterViz Demo"),
    );
  }
}
