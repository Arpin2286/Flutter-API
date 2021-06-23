import 'package:flutter/material.dart';
import './userprofile.dart';

class PenggunaLain extends StatefulWidget {
  @override
  _PenggunaLainState createState() => _PenggunaLainState();
}

class _PenggunaLainState extends State<PenggunaLain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[Icon(Icons.group_add), Text("  Pengguna Lainnya")],
        ),
      ),
      body: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Ray Sutha",
                          pekerjaan: "Sales Motor Vespa",
                          image:
                              "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
                          lokasi: "Desa Busungbiu",
                        )),
              );
            },
            child: Pengguna(
              nama: "Ray Sutha",
              pekerjaan: "Sales Motor Vespa",
              image:
                  "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
              lokasi: "Desa Busungbiu",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Guz Mang Agastya",
                          pekerjaan: "Mahasiswa",
                          image:
                              "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
                          lokasi: "Desa Bungkulan",
                        )),
              );
            },
            child: Pengguna(
              nama: "Guz Mang Agastya",
              pekerjaan: "Mahasiswa",
              image:
                  "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
              lokasi: "Desa Bungkulan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                        nama: "Wahyu Cahyadi",
                        pekerjaan: "Seniman",
                        image:
                            "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
                        lokasi: "Desa Bungkulan")),
              );
            },
            child: Pengguna(
              nama: "Wahyu Cahyadi",
              pekerjaan: "Seniman",
              image:
                  "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
              lokasi: "Desa Bungkulan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                        nama: "Guz Rizky",
                        pekerjaan: "Tentara TNI-AL",
                        image:
                            "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
                        lokasi: "Desa Sukasada")),
              );
            },
            child: Pengguna(
              nama: "Guz Rizky",
              pekerjaan: "Tentara TNI-AL",
              image:
                  "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
              lokasi: "Desa Sukasada",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                        nama: "Irfan Walhidayah",
                        pekerjaan: "Mahasiswa",
                        image:
                            "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
                        lokasi: "Kota Medan")),
              );
            },
            child: Pengguna(
              nama: "Irfan Walhidayah",
              pekerjaan: "Mahasiswa",
              image:
                  "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
              lokasi: "Kota Medan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Arpin Rarekual",
                          pekerjaan: "Seniman",
                          image:
                              "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
                          lokasi: "Desa Kubutambahan",
                        )),
              );
            },
            child: Pengguna(
              nama: "Arpin Rarekual",
              pekerjaan: "Seniman",
              image:
                  "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
              lokasi: "Desa Kubutambahan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Wahyu Awan Sunarwan",
                          pekerjaan: "Seniman",
                          image:
                              "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
                          lokasi: "Kota Singaraja",
                        )),
              );
            },
            child: Pengguna(
              nama: "Wahyu Awan Sunarwan",
              pekerjaan: "Seniman",
              image:
                  "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
              lokasi: "Kota Singaraja",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Dharma Beritz",
                          pekerjaan: "Mekanik",
                          image:
                              "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
                          lokasi: "Kelurahan Banyuning Barat",
                        )),
              );
            },
            child: Pengguna(
              nama: "Dharma Beritz",
              pekerjaan: "Mekanik",
              image:
                  "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png",
              lokasi: "Kelurahan Banyuning Barat",
            ),
          ),
        ],
      ),
    );
  }
}

class Pengguna extends StatelessWidget {
  Pengguna({Key key, this.nama, this.pekerjaan, this.image, this.lokasi})
      : super(key: key);
  final String nama;
  final String pekerjaan;
  final String image;
  final String lokasi;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: new CircleAvatar(
              backgroundImage: NetworkImage(this.image),
              radius: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.nama, //untuk nama
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                this.pekerjaan,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                this.lokasi,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
