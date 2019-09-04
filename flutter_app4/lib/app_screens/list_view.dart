import 'package:flutter/material.dart';
import 'package:flutter_app4/app_screens/home.dart';

void main(){
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Exploring Widgets",
          //home: Home(),
          home:Scaffold(
              body:getListView()
          )
      )
  );
}

Widget getListView(){
  var listView =ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("one item"),
        subtitle: Text("subtitle one"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Light"),
        subtitle: Text("subtitle two"),
        trailing: Icon(Icons.wb_incandescent),
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("WIFI"),
        subtitle: Text("subtitle three"),
        trailing: Icon(Icons.wifi_lock),
      )
    ],
  );

  return listView;
}