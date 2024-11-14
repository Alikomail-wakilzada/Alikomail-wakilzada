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
      title: 'Loader and Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SecondPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
          strokeWidth: 6.0,
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('هرات',style: TextStyle(color: Colors.yellow),),
        backgroundColor: Colors.black,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'share') {
                
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('شریک ساختن'),
                    content: Text('شریک ساختن انتخاب شد.'),
                  ),
                );
              } else if (value == 'about') {
               
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('درباره'),
                    content: Text('این یک برنامه تستی است.'),
                  ),
                );
              } else if (value == 'logout') {
                Navigator.pop(context);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'share',
                child: Text('شریک ساختن'),
              ),
              PopupMenuItem(
                value: 'about',
                child: Text('درباره'),
              ),
              PopupMenuItem(
                value: 'logout',
                child: Text('خروج'),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            
            title: Text('آیتم شماره ${index + 1}'),
            
          );
        },
      ),
    );
  }
}








