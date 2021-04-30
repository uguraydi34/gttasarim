import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          centerTitle: true,
          title: Text("Güler Tasarım"),
          backgroundColor: Colors.pinkAccent[300],
        ),
        body: SafeArea(
          child: Container(
            //transform: Matrix4.rotationZ(-0.2),
            width: 200,
            height: 150,
            alignment: Alignment.center,
            margin: EdgeInsets.all(
                50), //margin dışardaki elemanlar ile arasına mesafe  yaratır.
            padding: EdgeInsets.all(
                5), //elemanın sınırlarından kendi sınırlarına boşluk oluşturur.
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.deepPurple[200],
              borderRadius: BorderRadiusDirectional.circular(16.0),
            ),
            child: Transform(
                transform: Matrix4.rotationZ(-0.2),
                alignment: FractionalOffset.center,
                child: Image.asset("images/gtlogo.png")),
          ),
        ),
      ),
    );
  }
}
