import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.nama, this.pekerjaan, this.image, this.lokasi})
      : super(key: key);
  final String nama;
  final String pekerjaan;
  final String image;
  final String lokasi;
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Profile")),
      body: Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    widget.image,
                  ),
                  radius: 90,
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    widget.nama,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.pekerjaan,
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_location,
                        color: Colors.red,
                      ),
                      Text(widget.lokasi)
                    ],
                  )
                ],
              ),
              Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          top:
                              BorderSide(color: Theme.of(context).dividerColor),
                          bottom: BorderSide(
                              color: Theme.of(context).dividerColor))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Call",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.green),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.green,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Message",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.green),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
