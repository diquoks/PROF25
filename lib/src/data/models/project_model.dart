class ProjectModel {
  final String title;
  final String typeProject;
  final String userId;
  final String dateStart;
  final String dateEnd;
  final String gender;
  final String descriptionSource;
  final String category;
  final String image;

  ProjectModel({
    required this.title,
    required this.typeProject,
    required this.userId,
    required this.dateStart,
    required this.dateEnd,
    required this.gender,
    required this.descriptionSource,
    required this.category,
    required this.image,
  });

  ProjectModel.fromJSON(Map<String, dynamic> json)
    : title = json["title"],
      typeProject = json["typeProject"],
      userId = json["user_id"],
      dateStart = json["dateStart"],
      dateEnd = json["dateEnd"],
      gender = json["gender"],
      descriptionSource = json["description_source"],
      category = json["category"],
      image = json["image"];

  Map<String, dynamic> toJSON() => {
    "title": title,
    "typeProject": typeProject,
    "user_id": userId,
    "dateStart": dateStart,
    "dateEnd": dateEnd,
    "gender": gender,
    "description_source": descriptionSource,
    "category": category,
    "image": image,
  };
}
