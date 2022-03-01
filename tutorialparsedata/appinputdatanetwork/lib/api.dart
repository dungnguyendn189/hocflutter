import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      'https://opentdb.com/api.php?amount=10&fbclid=IwAR1QkdFsA6byn7lQV-sq1z7aW5uazH30kd7h6XidFBsj_UJMOvRuSfNKQiY'));
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Faild To load Album');
  }
}

class Album {
  final String category;
  final String type;
  final String question;
  final String difficulty;
  final String correct_answer;
  const Album({
    required this.difficulty,
    required this.category,
    required this.correct_answer,
    required this.question,
    required this.type,
  });
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      category: json['category'],
      correct_answer: json['correct_answer'],
      question: json['questrion'],
      type: json['type'],
      difficulty: json['difficulty'],
    );
  }
}
