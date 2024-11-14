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
  var item =[
  Text("786"),
  TextField(),
  TextField(),
  ElevatedButton(onPressed: (){}, child: Text("ok"),),
  ElevatedButton(onPressed: (){}, child: Text("no ok"),),
  ElevatedButton(onPressed: (){}, child: Text("cancel"),),
  TextField(),
  ElevatedButton(onPressed: (){}, child: Text("ok"),),
  ElevatedButton(onPressed: (){}, child: Text("no ok"),),
  ElevatedButton(onPressed: (){}, child: Text("cancel"),),

  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
      
        
        
        
      ),
    );
  }}