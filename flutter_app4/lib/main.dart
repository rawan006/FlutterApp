import 'package:flutter/material.dart';
import 'package:flutter_app4/app_screens/home.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring Widgets",
      //home: Home(),
      home:Scaffold(
        body:getListView(),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              debugPrint("oooh");
            },
          child: Icon(Icons.add),
          tooltip: "you clicked it",
        ),
      )
    )
  );
}

void ShowSnackbar(BuildContext context , String item){
  var snackbar = SnackBar(
    content: Text("you clicked item $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          debugPrint('print $item');
        }),
  );

  Scaffold.of(context).showSnackBar(snackbar);
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
          //debugPrint('${listItems[index]} was clicked');
          ShowSnackbar(context, listItems[index]);
        },
      );
    }
  );

  return listView;
}