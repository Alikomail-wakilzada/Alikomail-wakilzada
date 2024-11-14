import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/click.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: MyApp(
 
      ),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get asset => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images/54.jpg"),
          ),
          Text("Ali komail",style: TextStyle(fontFamily:  'ITCEDSCR.TTF',),
          
          )
        ],
      ),


    );
  }
}