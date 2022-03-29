import 'package:clonetravelapp/model/question_api.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class QuestionBloc {
  BehaviorSubject<List<Question>> currentQuestion =
      BehaviorSubject<List<Question>>.seeded([]);
  BehaviorSubject<int> questionIndex = BehaviorSubject<int>.seeded(0);
}
