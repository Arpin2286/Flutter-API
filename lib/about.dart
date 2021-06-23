import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Tentang Aplikasi"),
        ),
        body: Container(
          width: double.infinity,
          child: new ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: Center(
                  child: Text(
                    "Deskripsi Aplikasi",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Image.asset(
                "assets/ruang_loak.jpg",
                height: 150,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            '        Aplikasi Ruang Loak adalah aplikasi yang memungkinkan pengguna untuk menjual barang-barang bekas yang sudah tidak terpakai. Masing-masing pengguna dapat mengunggah barang yang dijual sesuka hati. Selain menjual barang, pengguna juga dapat melihat pengguna lain dalam aplikasi dan juga menikmati promo belanja setiap awal bulan.',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            '        Pada Aplikasi Ruang Loak Terinspirasi dari fitur marketplace yang berada pada aplikasi Facebook. Pada aplikasi market place Facebook mengharuskan pengguna untuk mengunduh terlebih dahulu aplikasi facebook sebelum digunakan. Sehingga aplikasi yang berukuran besar tapi hanya digunakan untuk jual beli saja dirasa kurang efektif. Oleh karena itu Ruang Loak hadir untuk memenuhi kebutuhan pengguna yang ingin berjualan barang bekas yang murah dan terpercaya',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          )),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    "Pengembang",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://media-exp1.licdn.com/dms/image/C5603AQHbZKgzo1QAyg/profile-displayphoto-shrink_200_200/0/1612793112343?e=1628121600&v=beta&t=Ah36qecUhez-m6h2TdgumMc1bqMHkHtnkWCsRVlGS_k",
                        ),
                        radius: 90,
                      ),
                      Text(
                        "Nama : I Gede Anggie Suardika Arpin",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "NIM : 1915091008",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Program Studi Sistem Informasi Undiksha",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
