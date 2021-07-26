// To parse this JSON data, do
//
//     final trackerContainer = trackerContainerFromJson(jsonString);

import 'dart:convert';

import 'package:dio/dio.dart';

List<TrackerContainer> trackerContainerFromJson(Response<dynamic> str) {
  final value = json.decode(str.toString())["results"];
  List<TrackerContainer> trackerContainers = [];
  for (var item in value) {
    trackerContainers.add(TrackerContainer.fromJson(item));
  }
  return trackerContainers;
}

String trackerContainerToJson(List<TrackerContainer> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TrackerContainer {
  TrackerContainer({
    this.id,
    required this.creatorId,
    required this.name,
    required this.description,
    required this.projectId,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int creatorId;
  String name;
  String description;
  int projectId;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory TrackerContainer.fromJson(Map<String, dynamic> json) =>
      TrackerContainer(
        id: json["id"],
        creatorId: json["creator_id"],
        name: json["name"],
        description: json["description"],
        projectId: json["project_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creator_id": creatorId,
        "name": name,
        "description": description,
        "project_id": projectId,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
