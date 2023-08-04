import 'package:flutter/material.dart';
class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Container(
              //   margin: EdgeInsetsDirectional.only(start: 20 ,top: 30 ,end: 10),
              //   height: 80,
              //   alignment: Alignment.topRight,
              //   child: GestureDetector(
              //     onTap : (){},
              //     child: CircleAvatar(
              //       radius: 45,
              //       backgroundColor: Colors.pink[50],
              //       child: Text(
              //         'Skip',
              //         style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold,fontSize: 13),
              //       ),
              //     ),
              //   ),
              // ),
              margin: EdgeInsets.only(right: 7,top: 7),
              padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: (){},
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Container(
            child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/img_3.png'),
                            fit:BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(start: 20 ,top: 290 ,end: 10),
                    alignment: Alignment.center,
                    //padding: EdgeInsets.only(left: 1 , top: 190, bottom: 20),
                    width: 370,
                    height: 50,
                    child: Center(
                      child: TextButton(
                        onPressed:(){
                          Navigator.pushNamed(context, "SecondPage");
                        },
                        child: Text(
                          'Continue with Email',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                      ),
                    ),
                    decoration: ShapeDecoration(

                      color: Colors.green[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(start: 20 ,top: 360 ,end: 10),
                    width: 370,
                    height: 50,
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.apple),
                            ),
                            TextButton(
                              onPressed:(){},
                              child:Text( 'Continue with Apple',
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold,
                                ),

                              ),
                            ),
                          ],
                        )

                    ),
                    decoration: ShapeDecoration(
                      color: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsetsDirectional.only(start: 20 ,top: 430 ,end: 10),
                    width: 370,
                    height: 50,
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            IconButton(
                              iconSize: 40,
                              color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.g_mobiledata_outlined),
                            ),
                            TextButton(
                              onPressed:(){},
                              child:Text(
                                'Continue with Google',
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold
                                ),

                              ),
                            ),
                          ],
                        )
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(start: 20 ,top: 500 ,end: 10),
                    width: 370,
                    height: 50,
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              alignment: Alignment.center,
                              color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.facebook),
                            ),
                            TextButton(
                              onPressed:(){},
                              child:Text(
                                'Continue with Facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold
                                ),

                              ),
                            ),
                          ],
                        )

                    ),
                    decoration: ShapeDecoration(
                      color: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                  ),


                  SizedBox(
                      height: 90
                  ),

                  Container(
                    margin: EdgeInsetsDirectional.only(start: 20 ,top: 580 ,end: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do not have any account ?',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        TextButton(
                          onPressed:(){},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                          children: [
                            TextSpan(text: 'By clicking "Continue with Email/Apple/Google/Facebook"\n above, you agree to 7krave\'s'),
                            TextSpan(
                              text: ' Terms and Conditions',
                              style: TextStyle(color: Colors.yellow[800]),
                            ),
                            TextSpan(text: ' and'),
                            TextSpan(
                                text: ' Privacy\n Policy',
                                style: TextStyle(color: Colors.yellow[800])
                            ),
                          ],
                        ),
                      )



                  ),
                ]
            )
        )
    );
  }
}
