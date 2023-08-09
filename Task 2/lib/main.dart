import 'package:api_based_app/home.dart';
import 'package:api_based_app/results.dart';
import 'package:flutter/material.dart';

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

