import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'Ruang_Loak');
    var database = await openDatabase(path, version: 1, onCreate: createDatabase);
    return database;
  }
}

createDatabase(Database database, int version) async {
  await database.execute(
      "CREATE TABLE pembelian(id INTEGER PRIMARY KEY, namabrg String, lokasi String, penawaran String)");
}
