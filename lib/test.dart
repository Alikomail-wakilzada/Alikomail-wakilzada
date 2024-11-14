

import 'package:flutter/material.dart';
import 'dart:async';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/second');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(radius: 50, backgroundImage: AssetImage('images/1.jpg'),),
            SizedBox(height: 20),
            CircleAvatar(radius: 50, backgroundImage: NetworkImage('images/2.jpg')),
            SizedBox(height: 20),
            CircleAvatar(radius: 50, backgroundImage: NetworkImage('images/3.jpg')),
            SizedBox(height: 50),
            CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow), strokeWidth: 8),
            Text("10 great Actor", style: TextStyle(color: Colors.orange, fontSize: 40.0,)),
            Text('By: Alikomail', style: TextStyle(color: Colors.pink)),
            Text('V 1.0.', style: TextStyle(color: Colors.pink)),
          ],
        ),
      ),
    );
  }
}
class Actor {
  final String name;
  final String imagePath;
  final String details;

  Actor({required this.name, required this.imagePath, required this.details});
}
class SecondPage extends StatelessWidget {
  final List<Actor> actors = [
   
     Actor(
      name: "Cristiano Ronaldo (Portugal)",
      imagePath: "images/ronaldo.png",
      details: "Cristiano Ronaldo is widely regarded as one of the greatest footballers of all time. Born on February 5, 1985, in Madeira, Portugal, he has achieved extraordinary success throughout his career. Known for his incredible athleticism, goal-scoring ability, and relentless work ethic, Ronaldo has won numerous titles, including **5 Ballon d'Ors**, **4 UEFA Champions League trophies**, and **1 UEFA European Championship** with Portugal. He became Real Madrid’s all-time top scorer and has enjoyed successful stints at **Manchester United**, **Real Madrid**, **Juventus**, and **Al Nassr**. Ronaldo is known for his versatility, physicality, and leadership on the pitch, making him one of the most iconic athletes in the world.",
    ),
    Actor(
      name: "Lionel Messi (Argentina)",
      imagePath: "images/2.jpg",
      details: "Lionel Messi is widely considered one of the greatest footballers of all time. Born on June 24, 1987, in Rosario, Argentina, Messi is known for his extraordinary dribbling, vision, and playmaking ability. After joining **FC Barcelona** at a young age, he went on to become the club's all-time top scorer and won numerous **La Liga** and **UEFA Champions League** titles. Messi has won **7 Ballon d'Ors**, a record, and led Argentina to victory in the **2021 Copa América** and the **2022 FIFA World Cup**. His technical brilliance and consistency have made him a global icon and one of the most admired athletes in history.",
    ),
  Actor(
  name: "Karim Benzema (France)",
  imagePath: "images/3.jpg",
  details: "Karim Benzema is one of the top strikers of his generation, known for his exceptional finishing, technical skill, and intelligent play. Born on December 19, 1987, in Lyon, France, Benzema spent the majority of his career at **Real Madrid**, where he became the club's second all-time top scorer and helped secure numerous titles, including **4 UEFA Champions League trophies** and **3 La Liga titles**. Benzema is renowned for his ability to create and finish chances, and his leadership on the pitch was pivotal in Real Madrid's success in recent years, especially during their Champions League victories. In 2022, he won his first **Ballon d'Or**, recognizing his brilliant performances and consistent excellence."
  ),
  ];
    // "Robert Downey Jr",
    // "Chris Evans",
    // "Scarlett Johansson",
    // "Tom Holland",
    // "Chris Hemsworth",
    // "Mark Ruffalo",
    // "Samuel L. Jackson",
    // "Benedict Cumberbatch",
    // "Tom Hiddleston",
    // "Jeremy Renner"
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('هرات'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'share') {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('شریک ساختن'),
                    content: Text('شریک ساختن اطلاعات این صفحه...'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('بستن'),
                      ),
                    ],
                  ),
                );
              } else if (value == 'about') {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('درباره'),
                    content: Text('این برنامه توضیحاتی دارد...'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('بستن'),
                      ),
                    ],
                  ),
                );
              } else if (value == 'exit') {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: 'share', child: Text('شریک ساختن')),
                PopupMenuItem(value: 'about', child: Text('درباره')),
                PopupMenuItem(value: 'exit', child: Text('خروج')),
              ];
                          },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: actors.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundImage: 
            AssetImage(actors[index].imagePath),),
            title: Text(actors[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(actor: actors [index])),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Actor actor;

  DetailPage({required this.actor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(actor.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(actor.imagePath),
            SizedBox(height: 20,),
            Text(actor.details,style: TextStyle(fontSize: 18)),
          ],
          
        ),
      ),
    );
  }
}


