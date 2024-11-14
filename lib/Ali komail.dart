import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: InstagramHomePage(),
    );
  }
}

class InstagramHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(icon: Icon(Icons.send), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // پست‌های اینستاگرام
            Post(
              username: 'username1',
              imageUrl: 'https://via.placeholder.com/400',
              likes: 120,
              caption: 'This is a caption',
            ),
            Post(
              username: 'username2',
              imageUrl: 'https://via.placeholder.com/400',
              likes: 90,
              caption: 'Another caption',
            ),
            // می‌توانید پست‌های بیشتری اضافه کنید
          ],
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  final String username;
  final String imageUrl;
  final int likes;
  final String caption;

  Post({required this.username, required this.imageUrl, required this.likes, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(username, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$likes likes', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(caption),
          ),
        ],
      ),
    );
  }
}