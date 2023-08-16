 import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  static String country="";
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController countryController = TextEditingController(); //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('UNIVERSITIES HUNT',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        )),
      ),

      body:
      Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img_8.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

      Container(
        margin: EdgeInsets.only(left: 30, right: 30,top: 130),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            TextField(
              controller: countryController, //
              onChanged: (data){
                MyHome.country=data;
              },
              decoration: InputDecoration(
                hintText: "Enter the Country Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              color: Colors.cyan[200],
              child: MaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'results');
                },
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:Colors.black),

                  ),
                ),
              ),

          ],
        ),
      ),
          ],
        ),
      ),


    );
  }
}


