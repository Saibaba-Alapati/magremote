// To parse this JSON data, do
//
//     final categoryContainer = categoryContainerFromJson(jsonString);

import 'dart:convert';

import 'package:dio/dio.dart';

List<CategoryContainer> userFromJson(Response<dynamic> str) {
  final value = json.decode(str.toString())["results"];
  List<CategoryContainer> categorycontainers = [];
  for (var item in value) {
    categorycontainers.add(CategoryContainer.fromJson(item));
  }
  return categorycontainers;
}

String categoryContainerToJson(List<CategoryContainer> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryContainer {
  CategoryContainer({
    this.id,
    required this.creatorId,
    required this.trackercontainerId,
    required this.projectId,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int creatorId;
  int trackercontainerId;
  int projectId;
  String name;
  String description;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory CategoryContainer.fromJson(Map<String, dynamic> json) =>
      CategoryContainer(
        id: json["id"],
        creatorId: json["creator_id"],
        trackercontainerId: json["trackercontainer_id"],
        projectId: json["project_id"],
        name: json["name"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creator_id": creatorId,
        "trackercontainer_id": trackercontainerId,
        "project_id": projectId,
        "name": name,
        "description": description,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
