import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:showjsonui/album_model.dart';

import 'data_api.dart';

Future fetchAlbum() {
  final dataRespone = http.get(Uri.parse(
      'https://www.7timer.info/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0'));

  return dataRespone;
}
