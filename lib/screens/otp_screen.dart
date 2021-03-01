import 'package:flutter/material.dart';
import 'package:chat_app_carr/utils/utilScreen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class otpScreen extends StatefulWidget {
  static String id = 'otpScreen';

  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF430064),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Utils.leftArrowIcon(),
            SizedBox(
              height: 160.0,
            ),
            Center(
              child: Text(
                'Enter the code',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'You will it received shortly',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 135.0),
              child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33.0),
                ),
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  'Resend',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Text(
                '1:15',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 200.0, right: 100.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23.0),
                ),
                color: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, homeScreen.id);
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 18.0,),
                ),
              ),
            ),
            SizedBox(
              height: 160.0,
            ),
            Utils.buttom_text(),
          ],
        ),
      ),
    );
  }
}
