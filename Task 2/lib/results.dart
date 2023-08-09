import 'package:flutter/material.dart';
class MyResults extends StatefulWidget {
  const MyResults({Key? key}) : super(key: key);

  @override
  State<MyResults> createState() => _MyResultsState();
}

class _MyResultsState extends State<MyResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Results'),
      ),
    );
  }
}
