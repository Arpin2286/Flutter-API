import 'package:flutter/material.dart';
import 'detail.dart';

class SemuaDaftar extends StatefulWidget {
  @override
  _SemuaDaftarState createState() => _SemuaDaftarState();
}

class _SemuaDaftarState extends State<SemuaDaftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Produk"),
      ),
      body: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          nama: "Iphone 8",
                          harga: 5000000,
                          deskripsi:
                              "Iphone 8 64gb, Minus finger printdan kamera blkang  perlu ganti Hp baypass murni pmkaianteman  lupa icloud. Sudah bebas masuk iclud dan semua kartu bisa. Iphone ori",
                          image: "iphone8.jpg",
                          star: 4,
                          lokasi: "Desa Busungbiu",
                        )),
              );
            },
            child: Produk(
              nama: "Iphone 8",
              harga: 5000000,
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
                              "For sale macbook retina display 2015 11inch. Ios 11.01 bigsur. Good condition baterry 90% still good condition... For serious buyer only interest please dm.. Thankyou",
                          harga: 2245000,
                          image: "mac.jpg",
                          star: 2,
                          lokasi: "Desa Kubutambahan",
                        )),
              );
            },
            child: Produk(
              nama: "BUC Macbook Pro 2019",
              harga: 2245000,
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
                          deskripsi:
                              "Dijual!!!!! Kamera canon 1300D full set ori beli di luar negeri jarang dipakai harga 3jt nego bensin. Minat? Hub 081937522100 Wa",
                          harga: 500000,
                          image: "kamera.jpg",
                          star: 3,
                          lokasi: "Desa Bubunan",
                        )),
              );
            },
            child: Produk(
              nama: "Kamera Canon EOS",
              harga: 500000,
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
                              "Bengkel essen motor jln ahmad yani barat 109 singaraja bali.... Barang baru bukan cat asli plastik",
                          harga: 450000,
                          image: "stang.jpg",
                          star: 5,
                          lokasi: "Desa Sukasada",
                        )),
              );
            },
            child: Produk(
                nama: "Stang motor bekas",
                harga: 450000,
                image: "stang.jpg",
                star: 5,
                lokasi: "Desa Sukasada"),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                        nama: "Smartwatch",
                        deskripsi:
                            "Hallo kak kami menjual smartwatch waterproof - smart band layar  warna dengan monitor Detak jantung import sanghai harga promo 129.000k Langsung GRATIS  1 Led Kak Normal 200k-270k kak promo bulan ini Bisa langsung whatapps kak ",
                        harga: 45000,
                        image: "smartwatch.jpg",
                        star: 5,
                        lokasi: "Desa Gerokgak")),
              );
            },
            child: Produk(
                nama: "Smartwatch",
                harga: 45000,
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
                        deskripsi:
                            "LED Monitor Gaming SPC Pro SM24 Inch Curve Full HD - SPC Curve SM24HD Cek langsung ke Rizalistic Computer WA 087762264646",
                        harga: 450000,
                        image: "monitor.jpg",
                        star: 3,
                        lokasi: "Desa Luwus")),
              );
            },
            child: Produk(
                nama: "LG LED 21in",
                harga: 450000,
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
  Produk({Key key, this.nama, this.harga, this.image, this.star, this.lokasi})
      : super(key: key);
  final String nama;
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
                    style: TextStyle(color: Colors.orange),
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
