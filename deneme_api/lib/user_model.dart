

import 'dart:convert';

UserModel userModelFromMap(String str) => UserModel.fromMap(json.decode(str));

String userModelToMap(UserModel data) => json.encode(data.toMap());

class UserModel {
    UserModel({
        required this.postId,
        required this.id,
        required this.name,
        required this.email,
        required this.body,
    });

    final int postId;
    final int id;
    final String name;
    final String email;
    final String body;

    factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
    );

    Map<String, dynamic> toMap() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
    };
}
