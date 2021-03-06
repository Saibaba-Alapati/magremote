// To parse this JSON data, do
//
//     final project = projectFromJson(jsonString);

import 'dart:convert';

List<Project> projectFromJson(String str) {
  final value = json.decode(str.toString())["results"];
  List<Project> projects = [];
  for (var item in value) {
    projects.add(Project.fromJson(item));
  }
  return projects;
}

String projectToJson(List<Project> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Project {
  Project({
    this.id,
    required this.creatorId,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int creatorId;
  String name;
  String description;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        id: json["id"],
        creatorId: json["creator_id"],
        name: json["name"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creator_id": creatorId,
        "name": name,
        "description": description,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
