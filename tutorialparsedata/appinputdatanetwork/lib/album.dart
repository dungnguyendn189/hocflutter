// To parse this JSON data, do
//
//     final album = albumFromJson(jsonString);

import 'dart:convert';

Album albumFromJson(String albumRessponse) =>
    Album.fromJson(json.decode(albumRessponse));

class Album {
  Album({
    this.responseCode,
    this.results,
  });

  int? responseCode;
  List<Result>? results;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        responseCode:
            json["response_code"] == null ? null : json["response_code"],
        results: json["results"] == null
            ? null
            : List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );
}

class Result {
  Result({
    this.category,
    this.type,
    this.difficulty,
    this.question,
    this.correctAnswer,
    this.incorrectAnswers,
  });

  String? category;
  String? type;
  String? difficulty;
  String? question;
  String? correctAnswer;
  List<String>? incorrectAnswers;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        category: json["category"] == null ? null : json["category"],
        type: json["type"] == null ? null : json["type"],
        difficulty: json["difficulty"] == null ? null : json["difficulty"],
        question: json["question"] == null ? null : json["question"],
        correctAnswer:
            json["correct_answer"] == null ? null : json["correct_answer"],
        incorrectAnswers: json["incorrect_answers"] == null
            ? null
            : List<String>.from(json["incorrect_answers"].map((x) => x)),
      );
}
