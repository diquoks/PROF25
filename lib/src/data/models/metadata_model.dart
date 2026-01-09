class MetadataModel {
  final String? email;
  final String? dateBirthday;
  final String? firstName;
  final String? gender;
  final String id;
  final String? lastName;
  final String? secondName;

  MetadataModel({
    required this.email,
    required this.dateBirthday,
    required this.firstName,
    required this.gender,
    required this.id,
    required this.lastName,
    required this.secondName,
  });

  MetadataModel.fromJSON(Map<String, dynamic> json)
    : email = json["email"],
      dateBirthday = json["dateBirthday"],
      firstName = json["firstname"],
      gender = json["gender"],
      id = json["id"],
      lastName = json["lastname"],
      secondName = json["secondname"];
}
