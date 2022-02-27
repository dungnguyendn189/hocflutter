import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class Logicalculator {
  BehaviorSubject<String> currentText = BehaviorSubject<String>.seeded('');
  BehaviorSubject<String> first = BehaviorSubject<String>.seeded('');
}
