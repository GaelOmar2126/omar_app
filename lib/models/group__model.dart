import 'package:mongo_dart/mongo_dart.dart' as mongo;

class GroupModel {
  final mongo.ObjectId id;
  String name;
  String type;
  int albumnes;

  GroupModel({
    required this.id,
    required this.name,
    required this.type,
    required this.albumnes,
  });

  //convertir de dart a mongo para enviarlo a ATLAS
  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'type': type,
      'albumnes': albumnes,
    };
  }

  // convertir de Json a Dart
  factory GroupModel.fromJson(Map<String, dynamic> json) {
    var id = json['_id'];

    // para verificar que sea del tipo de ObjectID
    if (id is String) {
      try {
        id = mongo.ObjectId.fromHexString(id);
      } catch (e) {
        id = mongo.ObjectId();
      }
    } else if (id is! mongo.ObjectId) {
      id = mongo.ObjectId();
    }

    return GroupModel(
        id: id as mongo.ObjectId,
        name: json['name'] as String,
        type: json['type'] as String,
        albumnes: json['albumnes'] as int);
  }
}
