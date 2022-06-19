import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/listpesanan.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/mainpage.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String nama = "", alamat = "", hp = "";
  String ayam = "", sapi = "", burger = "";
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();
  TextEditingController controllerHp = TextEditingController();
  TextEditingController controllerAyam = TextEditingController();
  TextEditingController controllerSapi = TextEditingController();
  TextEditingController controllerBurger = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
        leading: Image(image: AssetImage("assets/LOGO UTAMA.png")),
        title: Text("HALAMAN PEMESANAN"),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Container(
        width: lebar,
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 25, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/2.png"),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 25, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/3.png"),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 25, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/1.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "PESANAN",
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
              "Silahkan Mengisi Kolom dengan Benar",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFfebe14),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerNama,
              decoration: InputDecoration(
                hintText: "Masukakan Nama Anda",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerAlamat,
              decoration: InputDecoration(
                hintText: "Masukakan Alamat Anda",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerHp,
              decoration: InputDecoration(
                hintText: "Masukakan No HP Anda",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerAyam,
              decoration: InputDecoration(
                hintText: "Jumlah Pesanan Canai Kare Ayam (angka)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerSapi,
              decoration: InputDecoration(
                hintText: "Jumlah Pesanan Canai Kare Sapi (angka)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerBurger,
              decoration: InputDecoration(
                hintText: "Jumlah Pesanan Burger Canai (angka)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                final mySnackBar = SnackBar(
                  content: Text("PESANAN BERHASIL"),
                  duration: Duration(seconds: 3),
                  padding: EdgeInsets.all(10),
                );
                ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                setState(() {
                  nama = controllerNama.text;
                  alamat = controllerAlamat.text;
                  hp = controllerHp.text;
                  ayam = controllerAyam.text;
                  sapi = controllerSapi.text;
                  burger = controllerBurger.text;
                });
                users.add({
                  'Nama': controllerNama.text,
                  'Alamat': controllerAlamat.text,
                  'No HP': controllerHp.text,
                  'Jumlah Canai Kare Ayam': controllerAyam.text,
                  'Jumlah Canai Kare Sapi': controllerSapi.text,
                  'Jumlah Burger Canai': controllerBurger.text,
                });
                controllerNama.text = '';
                controllerAlamat.text = '';
                controllerHp.text = '';
                controllerAyam.text = '';
                controllerSapi.text = '';
                controllerBurger.text = '';
              },
              child: Text("Pesan Sekarang"),
            ),
            ElevatedButton(
              onPressed: () {
                final mySnackBar = SnackBar(
                  content: Text("LIST PESANAN"),
                  duration: Duration(seconds: 3),
                  padding: EdgeInsets.all(10),
                );
                ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                Get.to(ListPesanan());
              },
              child: Text("Lihat List Pesanan"),
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
            Text("Nama Pelanggan   : $nama"),
            Text("Alamat Pelanggan : $alamat"),
            Text("No HP Pelanggan  : $hp"),
            Text("Total Pesanan Canai Kare Ayam : $ayam"),
            Text("Total Pesanan Canai Kare Sapi : $sapi"),
            Text("Total Pesanan Burger Canai    : $burger"),
          ],
        ),
      ),
    );
  }
}

