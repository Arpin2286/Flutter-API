import 'dart:ffi';

class Penjualan {
  Penjualan(this._nama, this._keterangan, this._tanggal, this._jumlah);

  int _id;
  String _nama, _keterangan, _tanggal;
  String _jumlah;

  Penjualan.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama = map['nama'].toString();
    this._keterangan = map['keterangan'].toString();
    this._tanggal = map['tanggal'].toString();
    this._jumlah = map['jumlah'].toString();
  }

  int get id => _id;
  String get nama => _nama;
  String get keterangan => _keterangan;
  String get tanggal => _tanggal;
  String get jumlah => _jumlah;

  set nama(String value) {
    _nama = value;
  }

  set keterangan(String value) {
    _keterangan = value;
  }

  set tanggal(String value) {
    _tanggal = value;
  }

  set jumlah(String value) {
    _jumlah = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = nama;
    map['keterangan'] = keterangan;
    map['tanggal'] = tanggal;
    map['jumlah'] = jumlah;
    return map;
  }
}
