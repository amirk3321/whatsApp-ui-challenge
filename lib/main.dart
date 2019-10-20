
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/screen/home_screen.dart';

void main() => runApp(myApp());


class myApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>myAppState();
}

class myAppState extends State<myApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp UI Challange",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}