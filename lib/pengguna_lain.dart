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
                              "https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/158825774_5362976317076436_3773560689362417191_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGIuxnQS21K9OP3VfdnaJTfXXDKsc8NRGVdcMqxzw1EZbqgiCVgwSqvPSAvxR0bVpEOq9cgairm68uBzLMLyIHd&_nc_ohc=qpbkdQQ5kiQAX8c4RNt&_nc_ht=scontent-sin6-2.xx&oh=3c107b9d5fcd9e7e9640911c191a9f8d&oe=609D6CF2",
                          lokasi: "Desa Busungbiu",
                        )),
              );
            },
            child: Pengguna(
              nama: "Ray Sutha",
              pekerjaan: "Sales Motor Vespa",
              image:
                  "https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/158825774_5362976317076436_3773560689362417191_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGIuxnQS21K9OP3VfdnaJTfXXDKsc8NRGVdcMqxzw1EZbqgiCVgwSqvPSAvxR0bVpEOq9cgairm68uBzLMLyIHd&_nc_ohc=qpbkdQQ5kiQAX8c4RNt&_nc_ht=scontent-sin6-2.xx&oh=3c107b9d5fcd9e7e9640911c191a9f8d&oe=609D6CF2",
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
                              "https://scontent-sin6-1.xx.fbcdn.net/v/t1.6435-9/158917281_2915896518643233_4547816479487008025_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGc9GebrpsyfHRqLMUBG1YXQgmqWU403oBCCapZTjTegEdonqQr7C3EWEsnxNhdrDRjzPtNOyyXApDluAIDEj_p&_nc_ohc=IQicrbt0J84AX_CeaR0&_nc_ht=scontent-sin6-1.xx&oh=e2ae6e3e46819ec91c325597879912fc&oe=609B5244",
                          lokasi: "Desa Bungkulan",
                        )),
              );
            },
            child: Pengguna(
              nama: "Guz Mang Agastya",
              pekerjaan: "Mahasiswa",
              image:
                  "https://scontent-sin6-1.xx.fbcdn.net/v/t1.6435-9/158917281_2915896518643233_4547816479487008025_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGc9GebrpsyfHRqLMUBG1YXQgmqWU403oBCCapZTjTegEdonqQr7C3EWEsnxNhdrDRjzPtNOyyXApDluAIDEj_p&_nc_ohc=IQicrbt0J84AX_CeaR0&_nc_ht=scontent-sin6-1.xx&oh=e2ae6e3e46819ec91c325597879912fc&oe=609B5244",
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
                            "https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/159841011_2465584276921806_1861587298757651131_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEf5KQZxPaezXPYDjxAJgCtIWD-CnX4DCQhYP4KdfgMJF9QkNZZiWzfJj8axAgBviVewbvzWsxmG2xgPaGRtNLL&_nc_ohc=0YtGcNyOqDUAX8jJvDd&_nc_ht=scontent-sin6-2.xx&oh=288c2243af2c9c72cdbd0ebb04f31067&oe=609B9B4A",
                        lokasi: "Desa Bungkulan")),
              );
            },
            child: Pengguna(
              nama: "Wahyu Cahyadi",
              pekerjaan: "Seniman",
              image:
                  "https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/159841011_2465584276921806_1861587298757651131_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEf5KQZxPaezXPYDjxAJgCtIWD-CnX4DCQhYP4KdfgMJF9QkNZZiWzfJj8axAgBviVewbvzWsxmG2xgPaGRtNLL&_nc_ohc=0YtGcNyOqDUAX8jJvDd&_nc_ht=scontent-sin6-2.xx&oh=288c2243af2c9c72cdbd0ebb04f31067&oe=609B9B4A",
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
                            "https://scontent-sin6-1.xx.fbcdn.net/v/t1.6435-1/p320x320/118794564_1644471712397289_7266511913210369531_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeFgDLIu_DrWo9xlxjz8Q-ULX2JKWX8KX9BfYkpZfwpf0BVUVBGkRVERVPgOXO6zs7OERmis5kon9cIokqTwl3X5&_nc_ohc=funM3eYKBDgAX_L7mF6&_nc_ht=scontent-sin6-1.xx&tp=6&oh=8addd86b9233be2ce31a270930251476&oe=609C79FB",
                        lokasi: "Desa Sukasada")),
              );
            },
            child: Pengguna(
              nama: "Guz Rizky",
              pekerjaan: "Tentara TNI-AL",
              image:
                  "https://scontent-sin6-1.xx.fbcdn.net/v/t1.6435-1/p320x320/118794564_1644471712397289_7266511913210369531_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeFgDLIu_DrWo9xlxjz8Q-ULX2JKWX8KX9BfYkpZfwpf0BVUVBGkRVERVPgOXO6zs7OERmis5kon9cIokqTwl3X5&_nc_ohc=funM3eYKBDgAX_L7mF6&_nc_ht=scontent-sin6-1.xx&tp=6&oh=8addd86b9233be2ce31a270930251476&oe=609C79FB",
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
                            "https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/145199011_2339442796201781_4833103902886051727_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGe3cUXO6tWSz4SeEhfYlegq8Emn7keRE-rwSafuR5ET2bxLgFvs_KTY0XcImtISaoRZFN175Io2bzKWnaHFoBi&_nc_ohc=gU5cw5g86ZIAX-x3LEO&_nc_ht=scontent-sin6-2.xx&oh=3c39989444d695f262c6251c8685c1ed&oe=609D97A9",
                        lokasi: "Kota Medan")),
              );
            },
            child: Pengguna(
              nama: "Irfan Walhidayah",
              pekerjaan: "Mahasiswa",
              image:
                  "https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/145199011_2339442796201781_4833103902886051727_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGe3cUXO6tWSz4SeEhfYlegq8Emn7keRE-rwSafuR5ET2bxLgFvs_KTY0XcImtISaoRZFN175Io2bzKWnaHFoBi&_nc_ohc=gU5cw5g86ZIAX-x3LEO&_nc_ht=scontent-sin6-2.xx&oh=3c39989444d695f262c6251c8685c1ed&oe=609D97A9",
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
                              "https://scontent-sin6-1.xx.fbcdn.net/v/t1.6435-9/164494244_495164484829756_6597569005655150271_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFIJJAmn5FJdr6lQZESP3UZOgYM6KmXRcY6BgzoqZdFxg_73rhWga5eVKTZ9MPC8iRnCG-ltk2iuQAbxOGWELDi&_nc_ohc=gC9LwVEJj8MAX_zVDzI&_nc_ht=scontent-sin6-1.xx&oh=231a2ce63c05b0a094512ff76f36dbba&oe=609AFCC5",
                          lokasi: "Desa Kubutambahan",
                        )),
              );
            },
            child: Pengguna(
              nama: "Arpin Rarekual",
              pekerjaan: "Seniman",
              image:
                  "https://scontent-sin6-1.xx.fbcdn.net/v/t1.6435-9/164494244_495164484829756_6597569005655150271_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFIJJAmn5FJdr6lQZESP3UZOgYM6KmXRcY6BgzoqZdFxg_73rhWga5eVKTZ9MPC8iRnCG-ltk2iuQAbxOGWELDi&_nc_ohc=gC9LwVEJj8MAX_zVDzI&_nc_ht=scontent-sin6-1.xx&oh=231a2ce63c05b0a094512ff76f36dbba&oe=609AFCC5",
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
                              "https://scontent-sin6-3.xx.fbcdn.net/v/t1.6435-9/135121886_10218536741994233_1793397217476412489_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHUVYpW3VTIkE7Tqy-3q38vzFNSDlgQIybMU1IOWBAjJh0qBVZvJKb51EfoFx_klxj25mx06atIr6N1Io8_53uT&_nc_ohc=GOafHgCWo5QAX_h-iV8&_nc_ht=scontent-sin6-3.xx&oh=e3b7f7358590409d107318013bdc363c&oe=609BE84D",
                          lokasi: "Kota Singaraja",
                        )),
              );
            },
            child: Pengguna(
              nama: "Wahyu Awan Sunarwan",
              pekerjaan: "Seniman",
              image:
                  "https://scontent-sin6-3.xx.fbcdn.net/v/t1.6435-9/135121886_10218536741994233_1793397217476412489_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHUVYpW3VTIkE7Tqy-3q38vzFNSDlgQIybMU1IOWBAjJh0qBVZvJKb51EfoFx_klxj25mx06atIr6N1Io8_53uT&_nc_ohc=GOafHgCWo5QAX_h-iV8&_nc_ht=scontent-sin6-3.xx&oh=e3b7f7358590409d107318013bdc363c&oe=609BE84D",
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
                              "https://scontent-sin6-3.xx.fbcdn.net/v/t1.6435-1/p240x240/164003282_720783808600682_8005994194956942852_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeFpgQcX6YhXdcSS1A3tHaHXWuR3ErR6lZha5HcStHqVmGSzCIDOrJ1FX5vir5S_WR7TmlKJpqQlu4pdW1VfvDgi&_nc_ohc=u4A6tMutInIAX-bya-z&_nc_ht=scontent-sin6-3.xx&tp=6&oh=98092229e3296f8e7450ef8a8ca91acf&oe=609B700B",
                          lokasi: "Kelurahan Banyuning Barat",
                        )),
              );
            },
            child: Pengguna(
              nama: "Dharma Beritz",
              pekerjaan: "Mekanik",
              image:
                  "https://scontent-sin6-3.xx.fbcdn.net/v/t1.6435-1/p240x240/164003282_720783808600682_8005994194956942852_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeFpgQcX6YhXdcSS1A3tHaHXWuR3ErR6lZha5HcStHqVmGSzCIDOrJ1FX5vir5S_WR7TmlKJpqQlu4pdW1VfvDgi&_nc_ohc=u4A6tMutInIAX-bya-z&_nc_ht=scontent-sin6-3.xx&tp=6&oh=98092229e3296f8e7450ef8a8ca91acf&oe=609B700B",
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
