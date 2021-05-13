import 'package:flutter/material.dart';
import 'about.dart' as about;
import './userprofile.dart' as Profil;
import 'detail.dart';
import './notifikasi.dart';
import './message.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen[50],
        appBar: new AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "RUANG LOAK",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Notifikasi();
                  }));
                }),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text(
                  "Anggie Arpin",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail: new Text("anggie.arpin.1@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "https://media-exp1.licdn.com/dms/image/C5603AQHbZKgzo1QAyg/profile-displayphoto-shrink_200_200/0/1612793112343?e=1619049600&v=beta&t=lF-xB5VBzKwcjh9BH_Efp7Uk59YOd95Bczh7ekTPsrw"),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover)),
              ),
              new ListTile(
                leading: new Icon(Icons.person),
                title: new Text("Account"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profil.Profile(
                      nama: "I Gede Anggie Suardika Arpin",
                      pekerjaan: "Mahasiswa",
                      image:
                          "https://media-exp1.licdn.com/dms/image/C5603AQHbZKgzo1QAyg/profile-displayphoto-shrink_200_200/0/1612793112343?e=1619049600&v=beta&t=lF-xB5VBzKwcjh9BH_Efp7Uk59YOd95Bczh7ekTPsrw",
                      lokasi: "Desa Kubutambahan",
                    );
                  }));
                },
              ),
              new ListTile(
                leading: new Icon(Icons.email_outlined),
                title: new Text("Inbox"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Message();
                  }));
                },
              ),
              new ListTile(
                leading: new Icon(Icons.info_outline),
                title: new Text("About"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return about.About();
                  }));
                },
              ),
            ],
          ),
        ),
        body: new GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
        ));
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/" + this.image,
            width: 150,
          ),
          Text(
            this.nama,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          Text(
            "Rp " + this.harga.toString(),
            style: TextStyle(color: Colors.red, fontSize: 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.red,
                size: 13,
              ),
              Text(this.lokasi,
                  style: TextStyle(
                    fontSize: 10,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
