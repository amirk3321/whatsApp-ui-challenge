import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/screen/call_screen.dart';
import 'package:flutter_whatsapp_ui/screen/chat_screen.dart';
import 'package:flutter_whatsapp_ui/screen/status_screen.dart';

class HomeScreen extends StatefulWidget{
    HomeScreen({Key key}) :super(key : key);
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController=TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: (){},
            )

          ],
          title: Text("WhatsApp"),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(child: Text("CHATS"),),
              Tab(child: Text("STATUS"),),
              Tab(child: Text("CALLS"),)
            ],
          ),
        ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Tab(icon: Icon(Icons.camera_alt),),
          Tab(child: ChatScreen(),),
          Tab(child: StatusScreen(),),
          Tab(child: CallScreen(),)
        ],
      ),
    );
  }


}

