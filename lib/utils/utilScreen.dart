import 'package:flutter/material.dart';

class Utils{

  static Widget leftArrowIcon() {
    return IconButton(
      icon: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 30.0,),
      onPressed: (){},
      alignment: Alignment.topLeft,
    );
  }

 static Widget buttom_text() {
    return Center(
      child: Text('All right reserved 2021',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
    );
  }
 static Widget receive_sms(BuildContext context) {
    return Column(
      children: [
        Container(alignment: Alignment.topRight,
          child: Container(
            constraints:BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.80,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Color(0xFF430064),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text('About Learn to Code While Building Apps - The Complete Flutter Development Bootcamp',
              style:
              TextStyle(color: Colors.white),),
          ),
        )
      ],
    );
  }

 static Widget send_sms(BuildContext context) {
    return Column(
      children: [
        Container( alignment: Alignment.topLeft,
          child: Container(
            alignment: Alignment.topLeft,
            constraints:BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.80,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text('About Learn to Code While Building Apps - The Complete Flutter Development Bootcamp'),
          ),
        )
      ],
    );
  }

 static Widget sendTextStyle(BuildContext context) {
    return Stack(
      children: [
        ListView(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 55,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,

                    decoration: InputDecoration(
                      hintText: "Type a message",hintStyle: TextStyle(fontSize: 20.0),
                      contentPadding: EdgeInsets.all(5),
                      prefix: IconButton(
                        icon: Icon(Icons.emoji_emotions),
                        onPressed: () {},
                      ),
                      suffix: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              icon: Icon(Icons.attach_file),
                              onPressed: null),
                          IconButton(icon: Icon(Icons.mic), onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(Icons.send),onPressed: null,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

//persnol chat
  static Widget persnol_chat() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/uet.jpg'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nisar Ali",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                        "The index property is the index of the selected tab"),
                  ],
                ),
              ),
            ),
            Text("04:00pm"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70, right: 50),
          child: Divider(
            thickness: 3,
          ),
        ),
      ],
    );
  }

}