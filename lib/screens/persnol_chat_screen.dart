import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_carr/utils/utilScreen.dart';

class persnolScreen extends StatefulWidget {
  @override
  _persnolScreenState createState() => _persnolScreenState();
}

class _persnolScreenState extends State<persnolScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return  Utils.persnol_chat();
      },
    );
  }
}
