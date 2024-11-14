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
        '/detail': (context) => DetailPage(),}
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
    // به محض ورود به صفحه اول بعد از 5 ثانیه به صفحه دوم برویم.
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/second');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/1.jpg')
            ),SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('images/2.jpg'),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('images/3.jpg'),
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
              strokeWidth: 8,
           ),
            Text("10 great Actor ", style: TextStyle(color: Colors.orange,fontSize: 40.0),),
            Text(
              'By: Alikomail',
              style: TextStyle(color: Colors.pink),
            ),
            Text(
              'V 1.0.',
              style: TextStyle(color: Colors.orange),
            ),
            Text('       '),
            Text('       '),
            Text('       '),
            Text('       '),
            Text('       '),
            Text('       '),
            Text('       '),
            Text('       '),
            Text('       '),
            Text('       '),
            Text('       '),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
              strokeWidth: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}




class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,
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
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('آتم شماره ${index + 1}'),
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: 'آتم شماره ${index + 1}');
            },
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String item = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('جزئیات $item'),
      ),
      body: 
         Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Image.asset("images/4.jpg"),
           ],
          ),
        ),
      
    );
  }
}
