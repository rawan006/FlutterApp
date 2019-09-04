
import 'package:flutter/material.dart';
import 'package:flutter_app4/app_screens/first_screen.dart';

void main()=> runApp( MyFlutterApp());


class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutterApp",
      home: Scaffold(
          appBar: AppBar(title: Text("my Flutter app screen"),),
          body:FirstScreen()
      ),
    );
  }
}