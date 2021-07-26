// To parse this JSON data, do
//
//     final trackerComment = trackerCommentFromJson(jsonString);

import 'dart:convert';

import 'package:dio/dio.dart';

List<TrackerComment> userFromJson(Response<dynamic> str) {
  final value = json.decode(str.toString())["results"];
  List<TrackerComment> comments = [];
  for (var item in value) {
    comments.add(TrackerComment.fromJson(item));
  }
  return comments;
}

String trackerCommentToJson(List<TrackerComment> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TrackerComment {
  TrackerComment({
    this.id,
    required this.creatorId,
    required this.trackercontainerId,
    required this.categorycontainerId,
    required this.trackerId,
    required this.projectId,
    required this.content,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int creatorId;
  int trackercontainerId;
  int categorycontainerId;
  int trackerId;
  int projectId;
  String content;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory TrackerComment.fromJson(Map<String, dynamic> json) => TrackerComment(
        id: json["id"],
        creatorId: json["creator_id"],
        trackercontainerId: json["trackercontainer_id"],
        categorycontainerId: json["categorycontainer_id"],
        trackerId: json["tracker_id"],
        projectId: json["project_id"],
        content: json["content"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creator_id": creatorId,
        "trackercontainer_id": trackercontainerId,
        "categorycontainer_id": categorycontainerId,
        "tracker_id": trackerId,
        "project_id": projectId,
        "content": content,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
