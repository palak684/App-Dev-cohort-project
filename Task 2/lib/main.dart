import 'package:api_based_app/home.dart';
import 'package:api_based_app/results.dart';
import 'package:flutter/material.dart';


// @dart=2.9
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context)=>MyHome(),
      'results': (context)=>MyResults(),
    },
  ));
}

