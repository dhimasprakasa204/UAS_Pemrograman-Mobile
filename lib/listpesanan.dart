import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/formpage.dart';
import 'package:uas_dhimasprakasahenjo_2009106015/itemcard.dart';

class ListPesanan extends StatefulWidget {
  const ListPesanan({Key? key}) : super(key: key);

  @override
  State<ListPesanan> createState() => _ListPesananState();
}

class _ListPesananState extends State<ListPesanan> {
  @override
  Widget build(BuildContext context) {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = firestore.collection("users");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
        leading: Image(image: AssetImage("assets/LOGO UTAMA.png")),
        title: Text("LIST PESANAN"),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Stack(
        children: [
          ListView(
            children: [
              StreamBuilder<QuerySnapshot>(
                  stream: users.snapshots(),
                  builder: (_, snapshot) {
                    return (snapshot.hasData)
                        ? Column(
                            children: snapshot.data!.docs
                                .map(
                                  (e) => ItemCard(e.get('Nama'), e.get('Alamat'), e.get('No HP'), 
                                  e.get('Jumlah Canai Kare Ayam'), e.get('Jumlah Canai Kare Sapi'), e.get('Jumlah Burger Canai'),
                                      onUpdate: () {
                                    users.doc(e.id).update(
                                      {"Nama": e.get('Nama') + '   (Sudah Lunas)'},
                                    );
                                  }, onDelete: () {
                                    users.doc(e.id).delete();
                                  }),
                                )
                                .toList(),
                          )
                        : Text('Loading...');
                  },
                ),
                            ElevatedButton(
              onPressed: () {
                final mySnackBar = SnackBar(
                  content: Text("BERHASIL KEMBALI"),
                  duration: Duration(seconds: 3),
                  padding: EdgeInsets.all(10),
                );
                ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                Get.off(FormPage());
              },
              child: Text("Kembali"),
            ),
            ],
          ),
        ],
      ),
    );
  }
}
