import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/mainpage.dart';

class DetailKareAyam extends StatelessWidget {
  const DetailKareAyam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
        leading: Image(image: AssetImage("assets/LOGO UTAMA.png")),
        title: Text("APLIKASI CANAIKU"),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/Kare Ayam.png"),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "CANAI ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFfebe14),
              ),
            ),
          ),
          Center(
            child: Text(
              "KARE AYAM",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFfebe14),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "- Roti Canai\n- Kare Ayam\n - Acar",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFFfebe14),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Harga 25k",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFfebe14),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            
            
            onPressed: () {
              final mySnackBar = SnackBar(
                content: Text("BERHASIL KEMBALI"),
                duration: Duration(seconds: 3),
                padding: EdgeInsets.all(10),
              );
              ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
              Get.off(MainPage());
            },
            child: Text("Kembali"),
          ),
        ],
      ),
    );
  }
}