import 'package:flutter/material.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/mainpage.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
        leading: Image(image: AssetImage("assets/LOGO UTAMA.png")),
        title: Text("APLIKASI CANAIKU"),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Container(
        width: lebar,
        child: Center(
          child: ListView(
            children: [
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/LOGO UTAMA.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "SELAMAT DATANG",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFfebe14),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "DI APLIKASI",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFfebe14),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "CANAIKU",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFfebe14),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  final mySnackBar = SnackBar(
                    content: Text("BERHASIL KE HALAMAN UTAMA"),
                    duration: Duration(seconds: 3),
                    padding: EdgeInsets.all(10),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                  Get.to(MainPage());
                },
                child: Text("KE HALAMAN UTAMA"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
