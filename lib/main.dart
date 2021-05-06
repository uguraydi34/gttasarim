import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

//link
void _launchURL() async => await canLaunch("https://www.gulertasarim.com")
    ? await launch("https://www.gulertasarim.com")
    : throw 'Could not launch www.gulertasarim.com';

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(fontFamily: "Tangerine"), tüm heryerde geçerli olsun diye
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        // appBar: AppBar(
        //  centerTitle: true,
        // title: Text("Güler Tasarım"),
        //backgroundColor: Colors.pinkAccent[300],
        // ),
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            //column özellikleri
            //mainAxisSize: MainAxisSize.min, //en az ekranda yer kapla demek
            //mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.start, //Ana ekranın başından itibaren yukarıdan aşağı çizer varsayılan oludu için bişi değişmiyecek
            //mainAxisAlignment:MainAxisAlignment.end, //elemanalrı en alta yakın dizer.
            //mainAxisAlignment: MainAxisAlignment.center, //elemanları ortalar.
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //elemanalrın aralarında eşit boşluk bırakır
            // crossAxisAlignment: CrossAxisAlignment.center,
            //yatayda ekranı doldurmasu için CrossAxisAligment.Stretch yazmak yeterli
            //bunu yaparsak alttaki widt degerleri geçersiz olur.
            children: [
              //bu elemanların arasında boşluk oluşturmak istersek sizedbox height değeri ilede verebiliriz.
              Container(
                //transform: Matrix4.rotationZ(-0.2),
                width: 260,
                height: 150,
                alignment: Alignment.center,
                //margin: EdgeInsets.all(15), //margin dışardaki elemanlar ile arasına mesafe  yaratır.
                //padding: EdgeInsets.all(5), //elemanın sınırlarından kendi sınırlarına boşluk oluşturur.
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  //color: Colors.deepPurple[200],
                  borderRadius: BorderRadiusDirectional.circular(16.0),
                ),
                child: Transform(
                    transform: Matrix4.rotationZ(-0.2),
                    alignment: FractionalOffset.center,
                    child: Image.asset("images/gtlogo.png")),
              ),

              Container(
                width: double.infinity,
                //height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadiusDirectional.circular(16.0),
                ),
                child: Center(
                  child: Text(
                    "Siz Hayal Edin Biz Tasarlayalım",
                    style: TextStyle(
                      fontFamily: "Tangerine1",
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: InkWell(
                  child: Text(
                    "www.gulertasarim.com",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.blue,
                          letterSpacing: .5,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  onTap:
                      _launchURL, //burada yukarıdaki url tıklanında web sayfası açılır.
                ),
              ),
              Container(
                width: 200,
                child: Divider(
                  height: 150,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                color: Colors.black54,
                child: ListTile(
                  leading: Icon(
                    Icons.phone_enabled_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                  title: Text(
                    "0212 541 10 41",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                color: Colors.black54,
                child: ListTile(
                  leading: Icon(
                    Icons.phone_iphone,
                    size: 50,
                    color: Colors.white,
                  ),
                  title: Text(
                    "+90 554 587 87 87",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                color: Colors.black54,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 50,
                    color: Colors.white,
                  ),
                  title: Text(
                    "iletisim@gulertasarim.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                color: Colors.black54,
                child: ListTile(
                  leading: Icon(
                    Icons.pin_drop_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Adres",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Pınartepe Mah. Orhangazi Cad. No:2 Dükkan:2-FC Gülsar Konutları Beylikdüzü/İSTANBUL",
                    style: TextStyle(
                      color: Colors.white,
                      //fontSize: 15.0,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Container(
              // width: double.infinity,
              //ekran el verdiğince alabileceği en yüksek değer
              //bu conrainerı oluşturmamızdaki sebep ekrana ortalaması için
              //crossAxisAligment.center ın çalışması için .
              // )
            ],
          ),
        ),
      ),
    );
  }
}
