// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);
// class LoginsList {
//   final List<Login> logins;

//   LoginsList({
//     required this.logins,
//   });

//   factory LoginsList.fromJson(List<dynamic> parsedJson) {
//     List<Login> logins = [];
//     logins = parsedJson.map((i) => Login.fromJson(i)).toList();

//     return new LoginsList(logins: logins);
//   }
// }
// List<Login> loginFromJson(String str) =>
//     List<Login>.from(json.decode(str).map((x) => Login.fromJson(x)));

// String loginToJson(List<Login> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Login {
  Login({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.gender,
    required this.email,
    required this.password,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String firstname;
  String lastname;
  String username;
  String gender;
  String email;
  String password;
  DateTime createdAt;
  DateTime updatedAt;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
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

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "firstname": firstname,
  //       "lastname": lastname,
  //       "username": username,
  //       "gender": gender,
  //       "email": email,
  //       "password": password,
  //       "created_at": createdAt.toIso8601String(),
  //       "updated_at": updatedAt.toIso8601String(),
  //     };
}
