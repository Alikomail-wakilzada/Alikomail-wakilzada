import 'package:flutter/material.dart';

var count = 0;
void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Center(
      child: Text(
        count.toString(),
        style: TextStyle(fontSize: 50, color: Colors.green),
        
      ),
    )),
  ));
}
