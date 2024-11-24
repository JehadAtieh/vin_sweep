import 'dart:convert';

class LandingPageResponse {
  final bool success;
  final int code;
  final String message;
  final List<LandingModel> result;

  LandingPageResponse({
    required this.success,
    required this.code,
    required this.message,
    required this.result,
  });

  factory LandingPageResponse.fromRawJson(String str) => LandingPageResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LandingPageResponse.fromJson(Map<String, dynamic> json) => LandingPageResponse(
    success: json["success"],
    code: json["code"],
    message: json["message"],
    result: List<LandingModel>.from(json["result"].map((x) => LandingModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "code": code,
    "message": message,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class LandingModel {
  final int id;
  final String key;
  final String imageUrl;
  final String imageName;
  final String title;
  final String description;

  LandingModel({
    required this.id,
    required this.key,
    required this.imageUrl,
    required this.imageName,
    required this.title,
    required this.description,
  });

  factory LandingModel.fromRawJson(String str) => LandingModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LandingModel.fromJson(Map<String, dynamic> json) => LandingModel(
    id: json["id"],
    key: json["key"],
    imageUrl: json["imageUrl"],
    imageName: json["imageName"],
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "key": key,
    "imageUrl": imageUrl,
    "imageName": imageName,
    "title": title,
    "description": description,
  };
}
