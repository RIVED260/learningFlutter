import 'dart:convert';

List<LatestNews> newsModelFromJson(String str) =>
    List<LatestNews>.from(json.decode(str).map((x) => LatestNews.fromJson(x)));

String newsModelToJson(List<LatestNews> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LatestNews {
  int? id = 0;
  String? title = "";
  String? shortDescription = "";
  String? thumbnail = "";
  String? mainImage = "";
  String? articleContent = "";
  String? articleUrl = "";

  LatestNews(
      {this.id,
        this.title,
        this.shortDescription,
        this.thumbnail,
        this.mainImage,
        this.articleContent,
        this.articleUrl});

  factory LatestNews.fromJson(Map<String, dynamic> json) => LatestNews(
      id: json["id"],
      title: json["title"],
      shortDescription: json["short_description"],
      thumbnail: json["thumbnail"],
      mainImage: json["main_image"],
      articleContent: json["article_content"],
      articleUrl: json["article_url"]);

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "short_description": shortDescription,
    "thumbnail": thumbnail,
    "main_image": mainImage,
    "article_content": articleContent,
    "article_url": articleUrl
  };
}
