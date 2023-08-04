import 'package:flutter/material.dart';
import 'package:cohort_project2/firstpage.dart';
import 'package:cohort_project2/SecondPage.dart';
void main() {
  runApp(MaterialApp(
      initialRoute: 'firstpage',
      debugShowCheckedModeBanner: false,
      routes: {'firstpage': (context) => MyFirstPage(),
        'SecondPage': (context) => MySecondPage(),
      },

  ));
  
}