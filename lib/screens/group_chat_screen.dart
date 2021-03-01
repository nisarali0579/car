
import 'package:flutter/material.dart';

class groupChatScreen extends StatefulWidget {
  @override
  _groupChatScreenState createState() => _groupChatScreenState();
}

class _groupChatScreenState extends State<groupChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.settings),
        ],
      ),
    );
  }
}