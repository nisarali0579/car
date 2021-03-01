import 'package:flutter/material.dart';
import 'camera_screen.dart';
import 'persnol_chat_screen.dart';
import 'group_chat_screen.dart';
import 'profile_screen.dart';
import 'chat_screen.dart';

class homeScreen extends StatefulWidget {
  static String id = 'homeScreen';

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> with SingleTickerProviderStateMixin{
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
    Tab(text: 'RIGHT'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF430064),
            title: Text('CArr'),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, chatScreen.id );
                },
              ),

              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                   Navigator.pushNamed(context, profileScreen.id );
                },
              ),

            ],
            bottom: TabBar(
              indicatorWeight: 5.0,
              indicatorColor: Colors.yellow,
              controller: _tabController,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.account_circle_sharp)),
                Tab(icon: Icon(Icons.group)),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              cameraScreen(),
              persnolScreen(),
              groupChatScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
