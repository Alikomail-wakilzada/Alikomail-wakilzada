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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("go next page"),),
            GestureDetector(
              child: GestureDetector(
                onTap: (){
                  print("you clicked");

                },
                child: Container(
                 width: 100,
                 height: 100,
                 color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );}}