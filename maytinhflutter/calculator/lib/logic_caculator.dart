import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class Logicalculator {
  BehaviorSubject<String> currentText = BehaviorSubject<String>.seeded('');
  BehaviorSubject<String> operatorText = BehaviorSubject<String>.seeded('');
  BehaviorSubject<String> first = BehaviorSubject<String>.seeded('');
  BehaviorSubject<String> second = BehaviorSubject<String>.seeded('');
  BehaviorSubject<String> result = BehaviorSubject<String>.seeded('');
}
