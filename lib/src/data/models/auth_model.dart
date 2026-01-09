import 'package:matule_query/matule_query.dart';

class AuthModel {
  final String token;
  final MetadataModel record;

  AuthModel({required this.token, required this.record});

  AuthModel.fromJSON(Map<String, dynamic> json)
    : token = json["token"],
      record = MetadataModel.fromJSON(json["record"]);
}
