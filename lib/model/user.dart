

import 'package:flutter/material.dart';

class User {
  String name;
  String profile;
  String status;
  String time;
  String counter;
  String timeLeft;
  String callTime;
  Icon icon;

  User({this.name, this.profile, this.status, this.time, this.counter,this.timeLeft,this.icon,this.callTime});

  @override
  String toString() {
    return 'User{name: $name, profile: $profile, status: $status, time: $time, counter: $counter, timeLeft: $timeLeft, callTime: $callTime, icon: $icon}';
  }


}
