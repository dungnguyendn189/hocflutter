import 'package:matcher/matcher.dart';
import 'package:http/http.dart' as http;
import 'package:testjson/bussines_api.dart';

Future fetchBussiness() {
  final bussinessRespone = http.get(Uri.parse(
      'https://www.7timer.info/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0'));
  return bussinessRespone;
}

Future fetchTitleServer() {
  final titleServerRespone = http.get(Uri.parse(
      'https://archive.org/metadata/TheAdventuresOfTomSawyer_201303'));
  return titleServerRespone;
}

Future fetchAlbum() {
  final albumRespone =
      http.get(Uri.parse('https://coinmap.org/api/v1/venues/'));

  return albumRespone;
}
