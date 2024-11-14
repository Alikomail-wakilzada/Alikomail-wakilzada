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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(padding: EdgeInsets.all(30.0),
      child: 
       Column(
      children: [
        Text("Notes"),
        ElevatedButton(onPressed: (){}, child: TextField(decoration: InputDecoration(hintText: 'enter note'),),)

     
      ],
     
       ),   
        ),
      
    );}}