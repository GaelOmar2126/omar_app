import 'package:mongo_dart/mongo_dart.dart' as mongo;

class MongoService {
  // Un unico punto de acceso
  static final MongoService _instance = MongoService._internal();

  //la base de datos a conectar
  late mongo.Db _db;

  MongoService._internal();

  factory MongoService() {
    return _instance;
  }

  Future<void> connect() async {
    _db = await mongo.Db.create(
        'mongodb+srv://gaelomar234:Markus231017@cluster0.lfyah.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0');
    await _db.open();
  }

  mongo.Db get db {
    if (!db.isConnected) {
      throw StateError('Base de no incnalizada, llama a connect() primero');
    }
    return _db;
  }
}
