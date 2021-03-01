import 'package:chat_app_carr/utils/utilScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'otp_screen.dart';
import 'home_screen.dart';
import 'landing_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class loginScreen extends StatefulWidget {
  static String id = 'loginScreen';

  // final _phoneController = TextEditingController();
  // final _codeController = TextEditingController();
  //
  // Future<bool> loginUser(String phone,BuildContext context)async{
  //   FirebaseAuth _auth= FirebaseAuth.instance;
  //   _auth.verifyPhoneNumber(
  //       phoneNumber: phone,
  //       timeout: Duration(seconds: 60),
  //       verificationCompleted: (AuthCredential credential)async{
  //         final result=  await _auth.signInWithCredential(credential);
  //         User user = result.user;
  //         if(user != null){
  //           Navigator.pushNamed(context, homeScreen.id);
  //         }
  //       },
  //       verificationFailed: (FirebaseAuthException exception){
  //         print(exception);
  //       },
  //       codeSent:  (String verification,[int forceResending]){
  //         showDialog(context: context,
  //         barrierDismissible: false,
  //         builder: (context){
  //           return AlertDialog(
  //             title: Text("Give the code"),
  //             content: Column(mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 TextField(
  //                   controller: _codeController,
  //                 )
  //               ],
  //             ),
  //             actions: [
  //               FlatButton(
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(23.0),
  //                 ),
  //                 color: Colors.green,
  //                 onPressed: (){},
  //                 child: Text("Next",style: TextStyle(color: Colors.white, fontSize: 18.0),),
  //               ),
  //             ],
  //           );
  //         });
  //       },
  //       codeAutoRetrievalTimeout: null
  //   );
  // }

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF430064),
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Utils.leftArrowIcon(),
            SizedBox(
              height: 100.0,
            ),
            Center(
              child: Container(
                child: Image.asset(
                  'images/carr_logo.png',
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0, bottom: 10.0),
              child: Text(
                "Name",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.0, right: 45.0),
              child: Container(
                child: SizedBox(
                  height: 50.0,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(33.0),
                        ),
                        hintText: "Jacob",
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0, bottom: 10.0),
              child: Text(
                "Phone",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.0, right: 45.0),
              child: Container(
                child: SizedBox(
                  height: 50.0,
                  child: TextField(
                    //  controller: ,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(33.0),
                        ),
                        hintText: "+1-(522)-333-4444",
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: checkBoxValue,
                    checkColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        print(value);
                        checkBoxValue = value;
                      });
                    }),
                Text(
                  "Accept and term and conditions Privacy and Policy",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 250.0, right: 50.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23.0),
                ),
                color: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, otpScreen.id);
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Utils.buttom_text(),
          ],
        ),
      ),
    );
  }
}
