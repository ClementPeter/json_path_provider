// // To parse this JSON data, do
// //
// //     final comment = commentFromJson(jsonString);

// import 'dart:convert';

// Comment commentFromJson(String str) => Comment.fromJson(json.decode(str));

// //String commentToJson(Comment data) => json.encode(data.toJson());

// class Comment {
//     Comment({
//         this.postId,
//         this.id,
//         this.name,
//         this.email,
//         this.body,
//     });

//     int? postId;
//     int? id;
//     String? name;
//     String? email;
//     String? body;

//     factory Comment.fromJson(Map<String, dynamic> json) => Comment(
//         postId: json["postId"],
//         id: json["id"],
//         name: json["name"],
//         email: json["email"],
//         body: json["body"],
//     );

//     // Map<String, dynamic> toJson() => {
//     //     "postId": postId,
//     //     "id": id,
//     //     "name": name,
//     //     "email": email,
//     //     "body": body,
//     // };
// }

// To parse this JSON data, do
//
//     final comment = commentFromJson(jsonString);

import 'dart:convert';

List<Comment> commentFromJson(String str) =>
    List<Comment>.from(json.decode(str).map((x) => Comment.fromJson(x)));


//Not in use
// String commentToJson(List<Comment> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Comment {
  Comment({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );


  //Not in use
  // Map<String, dynamic> toJson() => {
  //       "postId": postId,
  //       "id": id,
  //       "name": name,
  //       "email": email,
  //       "body": body,
  //     };
}
