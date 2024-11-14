
import 'package:flutter/material.dart';

void main(List<String> args) {
  var ts =TextStyle(fontSize: 30,color: Colors.brown);
var t= Text("ahmad is good boy", style: ts,);
  var tc = Center(child: t,);
  var c =Container(width: 300, height: 400, color: Colors.blue,child: tc,);
  var ce =Center(child: c,);
  var s =Scaffold(body: ce,);
var ma =MaterialApp(home: s,);
  runApp(ma);
}




  //  body: Padding(
    //   padding: EdgeInsets.all(28),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Text("786"),
    //     TextField(),
    //     TextField(readOnly: false,),
    //   ],
    //   ),),
    // ),