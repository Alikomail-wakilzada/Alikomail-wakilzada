import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';


void main (){
  runApp(
    MaterialApp(
      home: MyApp(),
    ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: 
      Column(
        children: [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/54.jpg'),        
        ),
        Text(
          'Ali komail' ,
          style: TextStyle(
            fontSize: 40.0 ,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            
          ),
        )

        ],
      )
          
    
    );
  }
}




          // Container(
          // height: 100.0,
          // width: 100.0,
          // margin:EdgeInsets.only(left: 40.0) ,
          // padding: EdgeInsets.all(25.0),
          // color: Colors.white,
          // child: Text("hello 1"),
          // ),
          // Container(
          // height: 100.0,
          // width: 100.0,
          // margin:EdgeInsets.only(left: 40.0) ,
          // padding: EdgeInsets.all(25.0),
          // color: Colors.brown,
          // child: Image.asset('images/54.jpg'),
          
        //  ),