// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);
import 'dart:convert';

import 'package:dio/dio.dart';

List<User> userFromJson(Response<dynamic> str) {
  final value = json.decode(str.toString())["results"];
  List<User> users = [];
  for (var item in value) {
    users.add(User.fromJson(item));
  }
  return users;
}

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.id,
    this.firstname,
    this.lastname,
    this.username,
    this.gender,
    this.email,
    this.password,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? firstname;
  String? lastname;
  String? username;
  String? gender;
  String? email;
  String? password;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        username: json["username"],
        gender: json["gender"],
        email: json["email"],
        password: json["password"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "username": username,
        "gender": gender,
        "email": email,
        "password": password,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
