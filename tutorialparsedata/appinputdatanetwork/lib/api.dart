import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbums(http.Client client) async {
  final response =
      await client.get(Uri.parse('https://opentdb.com/api.php?amount=10'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseAlbums, response.body);
}

List<Album> parseAlbums(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Album>((json) => Album.fromJson(json)).toList();
}

class Album {
  final String category;
  final String type;
  final String question;
  final String difficulty;
  final String correct_answer;
  final List incorrect_answers;
  const Album({
    required this.difficulty,
    required this.category,
    required this.correct_answer,
    required this.incorrect_answers,
    required this.question,
    required this.type,
  });
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      category: json['category'] as String,
      correct_answer: json['correct_answer'] as String,
      incorrect_answers: json['incorrect_answers'] as List,
      question: json['questrion'] as String,
      type: json['type'] as String,
      difficulty: json['difficulty'] as String,
    );
  }
}
