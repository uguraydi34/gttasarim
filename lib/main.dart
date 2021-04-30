import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.blueGrey[100],
    appBar: AppBar(
      centerTitle: true,
      title: Text("Güler Tasarım"),
      backgroundColor: Colors.pinkAccent[300],
    ),
    body: Center(
      child: Image.asset("images/gtlogo.png"),
    ),
  )));
}
