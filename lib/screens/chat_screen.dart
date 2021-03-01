import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'package:chat_app_carr/utils/utilScreen.dart';

class chatScreen extends StatefulWidget {
  static String id = 'chatScreen';

  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(80.0),
          ),
        ),
        title: Text("Nisar Ai"),
        backgroundColor: Color(0xFF430064),
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/uet.jpg'),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, profileScreen.id);
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Utils.sendTextStyle(context),
      ),
    );
  }
}
