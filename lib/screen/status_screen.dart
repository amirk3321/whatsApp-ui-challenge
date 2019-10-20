import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/repository/fake_repository.dart';

class StatusScreen extends StatelessWidget {
  StatusScreen({Key key}) : super(key: key);

  FakeRepository _repository = FakeRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          floatingActionButtonCustom(
            icons: Icons.camera_alt,
            colors: Colors.green[700],
            bottom: 15,
            right: 15,
            iconColors: Colors.white
          ),
          floatingActionButtonCustom(
              icons: Icons.edit,
              colors: Colors.grey[200],
              bottom: 85,
              right: 15,
              iconColors: Colors.black
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Stack(
                  children: <Widget>[
                    _singleScreenLayout(
                        profile: "assets/default.png",
                        name: "My Stats",
                        status: "Tap to add status update"),
                    Positioned(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green[500],
                            borderRadius: BorderRadius.circular(50)
                          ),child: Icon(Icons.add,color: Colors.white,)),
                      top: 35,
                      left: 35,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                color: Colors.grey.withOpacity(.2),
                child: Text("Recent updates"),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: ListView.builder(
                      itemCount: _repository.getFakeUsers().length,
                      itemBuilder: (BuildContext context, index) {
                        final user = _repository.getFakeUsers()[index];
                        return Column(
                          children: <Widget>[
                            _singleScreenLayout(
                              profile: user.profile,
                              name: user.name,
                              status: user.timeLeft,
                            ),
                            Container(width: 500,child: Divider(color: Colors.grey.withOpacity(.3),))
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _singleScreenLayout({
    String profile,
    String name,
    String status,
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 400,
                      child: Text(
                        status,
                        style: TextStyle(color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Positioned floatingActionButtonCustom({double bottom,double right,icons,colors,iconColors}){
    return Positioned(
      bottom: bottom,
      right: right,
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(1.0,2.0),
              blurRadius: 2.0
            )
          ],
          borderRadius: BorderRadius.circular(50),
          color: colors
        ),
        child: FlatButton(
          onPressed: (){},
          child: Icon(icons,color: iconColors,),
        ),
      ),
    );
  }
}
