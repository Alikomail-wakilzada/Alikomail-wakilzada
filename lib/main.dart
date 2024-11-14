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
     
      body: Padding(padding: const EdgeInsets.all(50.0), 
       child: Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        
      children: [      
        Text("calcultor" , style: TextStyle(fontSize: 47,color: Colors.black,fontStyle: FontStyle.italic) ,),
        TextField(
          decoration: InputDecoration(hintText: "first number"),
        ),
        TextField(
            decoration: InputDecoration(hintText: "second number"),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(onPressed: (){
            
          }, child:Text("calculate")),
        ),
        Text("result = 0"),

      ]
      )
    ),);
  }
}
































