import 'dart:convert';
import 'package:api_based_app/home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' ;

import 'package:http/http.dart' as http;
class MyResults extends StatefulWidget {
  const MyResults({Key? key}) : super(key: key);

  @override
  State<MyResults> createState() => _MyResultsState();
}

class _MyResultsState extends State<MyResults> {

  var decode=[];
  var country='';
  var listC=0;
  @override
  void initState() {

    country= MyHome.country;
    getData();
    // TODO: implement initState
    super.initState();
  }
  getData() async {
    var url = Uri.parse(
        'http://universities.hipolabs.com/search?country=India');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      decode = jsonDecode(response.body);

      setState(() {
        listC = decode.length;
      });
    }
    else{
      print('404 Error Not Found');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Results'),
      ),
      body: Container(
        child: ListView.builder(
        itemCount: listC,
        itemBuilder: (BuildContext contex, int index){
          return Container(
            margin: EdgeInsets.only(top: 10,right: 20,left: 20),
            height: 200,
            child: Container(
              margin: EdgeInsets.only(top: 10,right: 20,left: 20),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(decode[index]['name'] ?? "", style: TextStyle(color: Colors.black),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(decode[index]['state-province'] ?? "", style: TextStyle(color: Colors.black),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(decode[index]['country'] ?? "", style: TextStyle(color: Colors.black),),
                    SizedBox(
                      height: 8,
                    ),
                    if(decode[index]['web_pages'] !=null)
                      InkWell(
                        onTap:(){

                          launchUrl(Uri.parse(decode[index]['web_pages'][0]
                              .toString()
                              .replaceAll('[', '')
                              .replaceAll(']', '')));
                        },
                        child: Text(
                          decode[index]['web_pages'][0]
                              .toString()
                              .replaceAll('[', '')
                              .replaceAll(']', ''),
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 8, 31, 180),

                              decoration: TextDecoration.underline),
                        ),
                      ),
                  ],
                ),
              ),
                ),
          );
        }),
      ),
    );
  }
}
