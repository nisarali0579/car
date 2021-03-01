import 'package:flutter/material.dart';
import 'package:chat_app_carr/screens/login_screen.dart';
import 'package:chat_app_carr/utils/utilScreen.dart';

class landingScreen extends StatefulWidget {
  static String id = 'landingScreen';
  @override
  _landingScreenState createState() => _landingScreenState();
}

class _landingScreenState extends State<landingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF430064),
      body: ListView(
        children: [
          SizedBox(
            height: 160.0,
          ),
          Center(
              child:  Container(
                //  padding: EdgeInsets.only(top: 17.0, left: 137, right: 154, bottom: 775),
                child: Image.asset(
                  'images/carr_logo.png',
                  height: 200,
                  width: 200,
                ),
              ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Center(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23.0),
              ),
              color: Colors.green,
              onPressed: () {},
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context,  loginScreen.id);
                },
                child: Text(
                  "Let's Start",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 220.0,
          ),
          Utils.buttom_text()
        ],
      ),
    );
  }


}
