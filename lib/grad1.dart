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
      appBar: AppBar(),
      backgroundColor: Colors.lightBlue,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        
        // mainAxisExtent: 200
        ),
        // scrollDirection: Axis.horizontal,
        reverse: false,
        children: [
          
          Image(
            image: AssetImage("images/54.jpg") ,
          ),
          Image(
            image: AssetImage("images/55.jpg"),
          ),
          Image(
            image: AssetImage("images/56.jpg"),
          ),
           Image(
            image: AssetImage("images/57.jpg"),
          ),
          Container(
            color: Colors.orange,
            child: Text("item4"),
          ),
          Container(
            color: Colors.teal,
            child: Text("item4"),
          ),
          Container(
            color: Colors.green,
            child: Text("item4"),
          )
        ],
        ),
        ),
        

    );
  }}