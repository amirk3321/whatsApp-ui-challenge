import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/repository/fake_repository.dart';

class CallScreen extends StatelessWidget {
  CallScreen({Key key}) : super(key: key);

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
                    callTime: user.callTime,
                    icon: user.icon,
                    counter: user.counter
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
        child: Icon(Icons.add_call),
      ),
    );
  }

  Widget _singleScreenLayout(
      {String profile,
        String name,
        String callTime,
        Icon icon,
        String counter,
      }) {
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
                      child: Row(
                        children: <Widget>[
                          Icon(counter == "" ? Icons.call_received: Icons.call_made,color: counter == ""? Colors.red :Colors.green,size: 15,),
                          Text(
                            callTime,
                            style: TextStyle(color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          Expanded(
            child: Container(
              child: Icon(icon.icon,color: Colors.green[800],),
            ),
          ),
        ],
      ),
    );
  }
}
