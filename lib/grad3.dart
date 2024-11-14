// import "package:flutter/material.dart";

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {  
//     return Scaffold(
//       backgroundColor: Colors.lightBlue,
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(30),
//             child: GridView(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   crossAxisSpacing: 8,
//                   mainAxisSpacing: 8,
//                   mainAxisExtent: 200),
//               // scrollDirection: Axis.horizontal,
//               reverse: false,
              
//               children: [
//                 Expanded(child: 
//                 Container(
//                   color: Colors.blue,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.home),
//                       Text("Home"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.yellow,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.email),
//                       Text("Email"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.pink,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.alarm),
//                       Text("Alarm"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.red,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.wallet),
//                       Text("Wallet"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.blue,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.backup),
//                       Text("Backup"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.green,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.book),
//                       Text("Book"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.orange,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.camera),
//                       Text("Camera"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.person),
//                       Text("Person"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Color.fromARGB(255, 113, 128, 114),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.print),
//                       Text("Print"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: const Color.fromARGB(255, 180, 243, 182),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.phone),
//                       Text("Phone"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Color.fromARGB(255, 236, 160, 170),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.notes),
//                       Text("Notes"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.grey,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.music_note),
//                       Text("Music"),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
