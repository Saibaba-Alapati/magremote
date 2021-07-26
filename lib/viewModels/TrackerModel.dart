// To parse this JSON data, do
//
//     final tracker = trackerFromJson(jsonString);

import 'dart:convert';

List<Tracker> trackerFromJson(String str) =>
    List<Tracker>.from(json.decode(str).map((x) => Tracker.fromJson(x)));

String trackerToJson(List<Tracker> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Tracker {
  Tracker({
    this.id,
    required this.creatorId,
    required this.trackercontainerId,
    required this.categorycontainerId,
    required this.projectId,
    required this.name,
    required this.content,
    this.startdate,
    this.enddate,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int creatorId;
  int trackercontainerId;
  int categorycontainerId;
  int projectId;
  String name;
  String content;
  dynamic startdate;
  dynamic enddate;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Tracker.fromJson(Map<String, dynamic> json) => Tracker(
        id: json["id"],
        creatorId: json["creator_id"],
        trackercontainerId: json["trackercontainer_id"],
        categorycontainerId: json["categorycontainer_id"],
        projectId: json["project_id"],
        name: json["name"],
        content: json["content"],
        startdate: json["startdate"],
        enddate: json["enddate"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creator_id": creatorId,
        "trackercontainer_id": trackercontainerId,
        "categorycontainer_id": categorycontainerId,
        "project_id": projectId,
        "name": name,
        "content": content,
        "startdate": startdate,
        "enddate": enddate,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
