// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
            scaffoldBackgroundColor: Color(0xFF0A0E21),),
        home: InputPage(),);
        
  }
}


