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
        // appBar: AppBar(
        //  centerTitle: true,
        // title: Text("Güler Tasarım"),
        //backgroundColor: Colors.pinkAccent[300],
        // ),
        body: SafeArea(
          child: Column(
            //mainAxisSize: MainAxisSize.min, //en az ekranda yer kapla demek
            //mainAxisAlignment: MainAxisAlignment.start, //Ana ekranın başından itibaren yukarıdan aşağı çizer varsayılan oludu için bişi değişmiyecek
            //mainAxisAlignment:MainAxisAlignment.end, //elemanalrı en alta yakın dizer.
            //mainAxisAlignment: MainAxisAlignment.center, //elemanları ortalar.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //elemanalrın aralarında eşit boşluk bırakır
            crossAxisAlignment: CrossAxisAlignment.center,
            //yatayda ekranı doldurmasu için CrossAxisAligment.Stretch yazmak yeterli
            //bunu yaparsak alttaki widt degerleri geçersiz olur.
            children: [
              //bu elemanların arasında boşluk oluşturmak istersek sizedbox height değeri ilede verebiliriz.
              Container(
                //transform: Matrix4.rotationZ(-0.2),
                width: 200,
                height: 150,
                alignment: Alignment.center,
                //margin: EdgeInsets.all(15), //margin dışardaki elemanlar ile arasına mesafe  yaratır.
                //padding: EdgeInsets.all(5), //elemanın sınırlarından kendi sınırlarına boşluk oluşturur.
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
              Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadiusDirectional.circular(16.0),
                ),
                child: Text("data"),
              ),
              Container(
                width: double.infinity,
                //ekran el verdiğince alabileceği en yüksek değer
                //bu conrainerı oluşturmamızdaki sebep ekrana ortalaması için
                //crossAxisAligment.center ın çalışması için .
              )
            ],
          ),
        ),
      ),
    );
  }
}
