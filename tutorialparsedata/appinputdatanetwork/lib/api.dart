import 'dart:convert';
import 'dart:html';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:appinputdatanetwork/album.dart';

Future fetchAlbum() {
  final albumRessponse =
      http.get(Uri.parse('https://nielsezeka.github.io/med4.json'));

  return albumRessponse;
}
