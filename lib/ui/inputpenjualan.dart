import 'dart:convert';

import 'package:flutter/material.dart';
import 'home.dart';
import 'package:http/http.dart' as http;

class InputPenjualan extends StatefulWidget {
  @override
  _InputPenjualanState createState() => _InputPenjualanState();
}

class _InputPenjualanState extends State<InputPenjualan> {
  TextEditingController namabrgController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  TextEditingController imageurlController = TextEditingController();

  final _fromkey = GlobalKey<FormState>();
  Future saveUpload() async {
    final response =
        await http.post(Uri.parse("http://192.168.223.162:80/api/barang"), body: {
      "namabrg": namabrgController.text,
      "deskripsi": deskripsiController.text,
      "harga": hargaController.text,
      "image_url": imageurlController.text,
    });
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Penjualan"),
      ),
      body: Container(
        color: Colors.orange[100],
        child: Form(
          key: _fromkey,
          child: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: namabrgController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Nama Barang",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Mohon Masukkan Data";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: deskripsiController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Deskripsi",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Mohon Masukkan Data";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: hargaController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Harga Barang",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Mohon Masukkan Data";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: imageurlController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "URL Gambar",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Mohon Masukkan Data";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Colors.green,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            "Simpan",
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            if (_fromkey.currentState.validate()) {
                              saveUpload().then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => InputScreen()));
                              });
                            }
                          },
                        ),
                      ),
                      Container(
                        width: 5.0,
                      ),
                      Expanded(
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                        color: Colors.red,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          "Batal",
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
