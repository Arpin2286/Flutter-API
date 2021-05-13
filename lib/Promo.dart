import 'package:flutter/material.dart';
import './detail.dart';

class Promo extends StatefulWidget {
  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promo Spesial"),
      ),
      body: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new Image.asset("assets/sale.jpg"),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          nama: "Iphone 8",
                          harga: 3500000,
                          deskripsi: "Iphone 8 fullset Charger Only no minus",
                          image: "iphone8.jpg",
                          star: 4,
                          lokasi: "Desa Busungbiu",
                        )),
              );
            },
            child: Produk(
              nama: "Iphone 8",
              harga: 3500000,
              deskripsi: "Iphone 8 fullset Charger Only no minus",
              image: "iphone8.jpg",
              star: 4,
              lokasi: "Desa Busungbiu",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          nama: "BUC Macbook Pro 2019",
                          deskripsi:
                              "BUC Macbook Pro 2019 dijual karena kepepet",
                          harga: 14000000,
                          image: "mac.jpg",
                          star: 2,
                          lokasi: "Desa Kubutambahan",
                        )),
              );
            },
            child: Produk(
              nama: "BUC Macbook Pro 2019",
              deskripsi: "BUC Macbook Pro 2019 dijual karena kepepet",
              harga: 14000000,
              image: "mac.jpg",
              star: 2,
              lokasi: "Desa Kubutambahan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          nama: "Kamera Canon EOS",
                          deskripsi: "no minus, dijual karena kepepet boss",
                          harga: 2500000,
                          image: "kamera.jpg",
                          star: 3,
                          lokasi: "Desa Bubunan",
                        )),
              );
            },
            child: Produk(
              nama: "Kamera Canon EOS",
              deskripsi: "no minus, dijual karena kepepet boss",
              harga: 2500000,
              image: "kamera.jpg",
              star: 3,
              lokasi: "Desa Bubunan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          nama: "Stang motor bekas",
                          deskripsi:
                              "Pemakaian baru 2 tahun, minat hubungi 08888888",
                          harga: 200000,
                          image: "stang.jpg",
                          star: 5,
                          lokasi: "Desa Sukasada",
                        )),
              );
            },
            child: Produk(
              nama: "Stang motor bekas",
              deskripsi: "Pemakaian baru 2 tahun, minat hubungi 08888888",
              harga: 200000,
              image: "stang.jpg",
              star: 5,
              lokasi: "Desa Sukasada",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                        nama: "Smartwatch",
                        deskripsi:
                            "Dijual karena jarang dipakai. pemakaian jarang baru 3 bulan.",
                        harga: 20000,
                        image: "smartwatch.jpg",
                        star: 5,
                        lokasi: "Desa Gerokgak")),
              );
            },
            child: Produk(
                nama: "Smartwatch",
                deskripsi:
                    "Dijual karena jarang dipakai. pemakaian jarang baru 3 bulan.",
                harga: 20000,
                image: "smartwatch.jpg",
                star: 5,
                lokasi: "Desa Gerokgak"),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                        nama: "LG LED 21in",
                        deskripsi: "Dijual pakai beli susu anak, nego tipis",
                        harga: 250000,
                        image: "monitor.jpg",
                        star: 3,
                        lokasi: "Desa Luwus")),
              );
            },
            child: Produk(
                nama: "LG LED 21in",
                deskripsi: "Dijual pakai beli susu anak, nego tipis",
                harga: 250000,
                image: "monitor.jpg",
                star: 3,
                lokasi: "Desa Luwus"),
          )
        ],
      ),
    );
  }
}

class Produk extends StatelessWidget {
  Produk(
      {Key key,
      this.nama,
      this.deskripsi,
      this.harga,
      this.image,
      this.star,
      this.lokasi})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String image;
  final String lokasi;
  final int star;
  final children = <Widget>[];

  @override
  Widget build(BuildContext context) {
    //rating
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 12,
        color: Colors.yellow,
      ));
    }

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            "assets/" + image,
            width: 200,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Text(
                    this.nama, //untuk nama
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp " + this.harga.toString(), // harga produk
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "Lokasi : " + this.lokasi,
                    style: TextStyle(fontSize: 10),
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: children,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
