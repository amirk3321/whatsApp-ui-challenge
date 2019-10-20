

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/model/user.dart';

class FakeRepository{


  List<User> getFakeUsers(){
    List<User> fakeUserList=List<User>();
    var user =User(name: "amir",time: "1:4 am",profile: "assets/default.png",status: "The AppBar also provides a bottom area which can be used to create",counter: "10",timeLeft: "13 minutes ago",icon: Icon(Icons.add_call),callTime: "10 October,3:18 pm");
    fakeUserList.add(user);
    var user1 =User(name: "jawad",time: "2:4 pm",profile: "assets/default.png",status: "As we know that in Flutter, we can create Material Design using Scaffold",counter: "1",timeLeft: "40 minutes ago",icon: Icon(Icons.video_call),callTime: "(2) Yesterday,9:18 pm");
    fakeUserList.add(user1);
    var user2=User(name: "nawaz",time: "9:4 am",profile: "assets/default.png",status: "When you use our services, you’re trusting us with your information. We understand this is a big",counter: "",timeLeft: "2 minutes ago",icon: Icon(Icons.video_call),callTime: "7 June,1:18 am");
    fakeUserList.add(user2);
    var user3 =User(name: "kabir",time: "3:4 pm",profile: "assets/default.png",status: "responsibility and work hard to protect your information and put you in control.",counter: "8",timeLeft: "just now",icon: Icon(Icons.add_call),callTime: "4 October,9:18 pm");
    fakeUserList.add(user3);
    var user4 =User(name: "ayaz",time: "7:4 pm",profile: "assets/default.png",status: "hello there i'm using this app",counter: "",timeLeft: "3 minutes ago",icon: Icon(Icons.add_call),callTime: "1 October,3:18 am");
    fakeUserList.add(user4);
    return fakeUserList;
  }



}