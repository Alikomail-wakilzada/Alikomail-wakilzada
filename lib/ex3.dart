import "dart:math";

import "package:flutter/material.dart";

void main(List<String> args) {
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
  List notes =[
    {
      "t" : "this is title 1",
      "d" : "this is a description",
      "date" : DateTime.now().toString()
    },
    {
      "t" : "this is title 1",
      "d" : "this is a description",
      "date" : DateTime.now().toString()
    },
    {
      "t" : "this is title 1",
      "d" : "this is a description",
      "date" : DateTime.now().toString()
    },
    {
      "t" : "this is title 1",
      "d" : "this is a description",
      "date" : DateTime.now().toString()
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (c, i) => ListTile(
        
        title: Text("item ${i + 1}"),
        onTap: () {
          print("you clicked ${i + 1}");
        },
        
        tileColor: Color.fromARGB(Random().nextInt(250), Random().nextInt(250), Random().nextInt(250), Random().nextInt(250)),
        leading: Icon(Icons.list),
        trailing:GestureDetector(child:  Icon(Icons.delete,color: Colors.red,
        )
      ), 
      
      ),
      ),
      
      );
       


    }}