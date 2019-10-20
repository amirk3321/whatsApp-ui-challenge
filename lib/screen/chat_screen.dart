import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/repository/fake_repository.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key key}) : super(key: key);

  FakeRepository _repository = FakeRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _repository.getFakeUsers().length,
          itemBuilder: (BuildContext context, index) {
            final user = _repository.getFakeUsers()[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                children: <Widget>[
                  _singleScreenLayout(
                    profile: user.profile,
                    name: user.name,
                    status: user.status,
                    time: user.time,
                    counter: user.counter,
                  ),
                  Container(
                      width: 500,
                      child: Divider())
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[600],
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }

  Widget _singleScreenLayout(
      {String profile,
      String name,
      String status,
      String time,
      String counter}) {
    return Container(
      child: Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  child: Image.asset(profile),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 400,
                      child: Text(
                        status,
                        style: TextStyle(color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(time),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    padding: EdgeInsets.all(4),
                      decoration: counter == "" ? BoxDecoration(): BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green
                      ),
                      child: Text(counter,style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
