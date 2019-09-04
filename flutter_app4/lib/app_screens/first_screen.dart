import 'package:flutter/material.dart';
import 'dart:math';



class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.lightBlueAccent,
      child:      Center(
          child: Text(
            generateLuckNum(),
            textDirection: TextDirection.ltr,
          )
      ),
    );
  }
  String generateLuckNum(){
    var random =Random();
    int num= random.nextInt(10);
    return "the num is $num";
  }
}