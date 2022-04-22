// To parserequired this JSON data, do
//
//     final jokeModel = jokeModelFromJson(jsonString);

import 'dart:convert';

JokeModel jokeModelFromJson(String str) => JokeModel.fromJson(json.decode(str));

String jokeModelToJson(JokeModel data) => json.encode(data.toJson());

class JokeModel {
  JokeModel({
    required this.categories,
    required this.iconUrl,
    required this.id,
    required this.url,
    required this.value,
  });

  List<dynamic> categories;

  String iconUrl;
  String id;

  String url;
  String value;

  factory JokeModel.fromJson(Map<String, dynamic> json) => JokeModel(
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        iconUrl: json["icon_url"],
        id: json["id"],
        url: json["url"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "icon_url": iconUrl,
        "id": id,
        "url": url,
        "value": value,
      };
}
