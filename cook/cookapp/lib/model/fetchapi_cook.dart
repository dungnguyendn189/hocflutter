import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future fetchCookData() {
  final cookDataRespone = http.get(
    Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata'),
  );
  return cookDataRespone;
}
