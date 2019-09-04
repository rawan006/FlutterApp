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

List<String> getListElements(){
  var item  = List<String>.generate(1000, (counter) => "Item $counter");
  return item;
}


Widget getListView(){
  var listItems= getListElements();
  var listView =ListView.builder(
      itemBuilder: (context , index){
        return  ListTile(
          leading: Icon(Icons.landscape),
          title: Text(listItems[index]),
          trailing: Icon(Icons.wifi_lock),
          onTap: (){
            debugPrint('${listItems[index]} was clicked');
          },
        );
      }
  );

  return listView;
}