class Pembelian {
  int id;
  String namabrg;
  String lokasi;
  String penawaran;

  pembelianMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['namabrg'] = namabrg;
    mapping['lokasi'] = lokasi;
    mapping['penawaran'] = penawaran;
    return mapping;
  }
}
