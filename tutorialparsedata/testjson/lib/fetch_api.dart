import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future fetchData() {
  final dataResponse =
      http.get(Uri.parse('https://restcountries.com/v3.1/all'));
  return dataResponse;
}
