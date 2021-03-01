import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';
import 'screens/login_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/home_screen.dart';
import 'screens/chat_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,

      initialRoute: landingScreen.id,
      routes: {
        landingScreen.id: (context) => landingScreen(),
        loginScreen.id:(context) => loginScreen(),
        otpScreen.id: (context) => otpScreen(),
        profileScreen.id:(context) => profileScreen(),
        homeScreen.id: (context) => homeScreen(),
        chatScreen.id:(context) => chatScreen(),
      },
    );
  }
}

// backgroundColor: Color(0xFF430064),
// AssetImage('images/uet.jpg'),

