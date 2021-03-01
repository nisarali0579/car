import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  static String id = 'profileScreen';

  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("profile"),
          backgroundColor: Color(0xFF430064),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50,),
            Center(
              child: CircleAvatar(
                radius: 60.5,
               //   'images/carr_logo.png'
                backgroundImage: AssetImage('images/uet.jpg'),
              ),
            ),
            SizedBox(height: 10,),
            Center(child: Text('Jacob',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 // child: Text('1(522) 333 4444')
                  Text('Number',style: TextStyle(fontWeight: FontWeight.bold),),
                  TextField(decoration: InputDecoration(
                    hintText: '1(522) 333 4444',
                    border: InputBorder.none
                  ),),
                  Text('Bio',style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('To remove the decoration entirely (including the underline and the space reserved for the label',style: TextStyle(),),
                  ),
                 SizedBox(height: 50,),
                  Text('Gallery',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 100.0 ,
                        width: 100,
                      ),
                      SizedBox(width: 15,),
                      Container(
                        color: Colors.yellow,
                        height: 100.0 ,
                        width: 100,
                      ),
                      SizedBox(width: 15,),
                      Container(
                        color: Colors.red,
                        height: 100.0 ,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 100.0 ,
                        width: 100,
                      ),
                      SizedBox(width: 15,),
                      Container(
                        child: Icon(Icons.add,),
                        color: Colors.yellow,
                        height: 100.0 ,
                        width: 100,
                      ),
                    ],
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
