// To parse this JSON data, do
//
//     final content = contentFromJson(jsonString);

import 'dart:convert';

List<Content> contentFromJson(String contentRespone) => List<Content>.from(
      json.decode(contentRespone).map(
            (contentRespone) => Content.fromJson(contentRespone),
          ),
    );

class Content {
  Content({
    this.title,
    this.author,
    this.lines,
    this.linecount,
  });

  String? title;
  String? author;
  List<String>? lines;
  String? linecount;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        title: json["title"] == null ? null : json["title"],
        author: json["author"] == null ? null : json["author"],
        lines: json["lines"] == null
            ? null
            : List<String>.from(json["lines"].map((x) => x)),
        linecount: json["linecount"] == null ? null : json["linecount"],
      );
}
