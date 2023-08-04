import 'package:flutter/material.dart';
bool isChecked= false;
class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "firstpage");
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
            highlightColor: Colors.blue[200],
          ),
          //colors are not working how to add blue
          title: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),

        body: Container(
            child: Stack(
                children: [
                   Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/img_5.png'),
                              fit:BoxFit.cover
                          )
                      ),
                    ),

                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 20 ,top: 278 ,end: 10),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.blue[50],
                              filled: true,
                              hintText: 'Enter your Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),

                              ),
                            ),

                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.blue[50],
                              filled: true,
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                    Container(
                      margin: EdgeInsetsDirectional.only(start: 20,top:410 , end:10 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      isChecked = value!;
                                    }
                                ),

                                Text(
                                    'Remember Me',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )),

                              ],
                            ),
                          ),
                          TextButton(onPressed: (){}, child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.red[300],
                            ),
                          ))
                        ],
                      ),
                    ),



                  Container(
                    margin: EdgeInsetsDirectional.only(start: 20 ,top: 450 ,end: 10),
                    alignment: Alignment.center,
                    //padding: EdgeInsets.only(left: 1 , top: 190, bottom: 20),
                    width: 370,
                    height: 50,
                    child: Center(
                      child: TextButton(
                        onPressed:(){},
                        child: Text(
                          'Sign In',
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
                    margin: EdgeInsetsDirectional.only(start: 20 ,top: 495 ,end: 10),
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
