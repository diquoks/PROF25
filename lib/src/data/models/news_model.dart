class NewsModel {
  final String id;
  final String newsImage;

  NewsModel({required this.id, required this.newsImage});

  NewsModel.fromJSON(Map<String, dynamic> json)
    : id = json["id"],
      newsImage = json["newsImage"];
}
