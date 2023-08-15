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
        backgroundColor: Colors.teal,
        title: Text('Search for Universities'),
      ),

      body:
      // Center(
      //   child: Stack(
      //     children: [
      //       Container(
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/img.png"),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),

      Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
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
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal,
              child: MaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'results');
                },
                child: Text(
                  'Search',
                  style: TextStyle(
                    color:Colors.white),
                  ),
                ),
              ),

          ],
        ),
      ),
      //     ],
      //   ),
      // ),


    );
  }
}


