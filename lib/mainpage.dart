import 'package:flutter/material.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/detailburgercanai.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/detailkareayam.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/detailkaresapi.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/formpage.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/landingpage.dart';
import 'package:get/get.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/listpesanan.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/userapi.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff921a19),
              ),
              child: Center(
                child: Text(
                  "CANAIKU",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFfebe14),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Landing Page"),
              onTap: () {
                Get.to(LandingPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Halaman Utama"),
              onTap: () {
                Get.to(MainPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Formulir Pemesanan Canai"),
              onTap: () {
                Get.to(FormPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt_outlined),
              title: Text("Lihat List Pesanan"),
              onTap: () {
                Get.to(ListPesanan());
              },
            ),
            ListTile(
              leading: Icon(Icons.api_outlined),
              title: Text("List User API"),
              onTap: () {
                Get.to(GetApi());
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: (ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                    child: Card(
                      color: Colors.transparent,
                      child: Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/Kare Ayam.png"),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(DetailKareAyam());
                    }),
                InkWell(
                    child: Card(
                      color: Colors.transparent,
                      child: Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/Burger Canai.png"),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(DetailBurgerCanai());
                    }),
                InkWell(
                    child: Card(
                      color: Colors.transparent,
                      child: Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/Kare Sapi.png"),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(DetailKareSapi());
                    }),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "MENU UTAMA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Menyediakan Berbagai Macam Olahan Roti Canai \n Yang Memiliki Cita Rasa Sedap",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(FormPage());
            },
            child: Text("Pesan Sekarang"),
          ),
        ],
      )),
    );
  }
}
