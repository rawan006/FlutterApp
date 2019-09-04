import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
          alignment: Alignment.center,
          color: Colors.grey,
          //width: 200.0,
          //height: 100.0,
          //padding: EdgeInsets.all(10.0),
          padding: EdgeInsets.only(left:10.0,top:70.0),
          // margin: EdgeInsets.all(30.0) ,// margin
          //margin: EdgeInsets.only(right:30.0,top:20.0) ,// margin
          child:Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded (
                      child:Text(
                        "lonely",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 25.0,
                            color: Colors.white,
                            fontFamily:"Livvic",
                            fontWeight: FontWeight.w700
                        ),
                      )
                  ),
                  Expanded (
                      child: Text(
                        "lonely try new things ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            color: Colors.red,
                            fontFamily:"Livvic",
                            fontWeight: FontWeight.w700
                        ),
                      )
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Expanded (
                      child:Text(
                        "2lonely",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 25.0,
                            color: Colors.white,
                            fontFamily:"Livvic",
                            fontWeight: FontWeight.w700
                        ),
                      )
                  ),
                  Expanded (
                      child: Text(
                        "2lonely try new things ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            color: Colors.red,
                            fontFamily:"Livvic",
                            fontWeight: FontWeight.w700
                        ),
                      )
                  ),
                ],
              ),
              getImg()
            ],
          )


      ),
    );

  }


}
class getImg extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage=AssetImage("images/images-13.jpg");
    Image image =Image(image: assetImage  , width: 260.0,height:260.0);
    return Container (child: image,);
  }
}

