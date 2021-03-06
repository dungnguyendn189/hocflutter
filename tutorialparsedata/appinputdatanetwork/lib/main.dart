import 'dart:io';

import 'package:appinputdatanetwork/album.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'api.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ABC'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            fetchAlbum().then((albumRessponse) {
              print(albumRessponse
                  .body); //<-- chấm body nó mới ra cái text ông nội ơi!
              final text = albumRessponse.body;

              ///--> lấy cái text ra
              final parsed = albumFromJson(text); //<---step 2
              print(
                  '---------data dưới đây là trong cái json đã parse---------');
              print(parsed.results?[0].question); //<---print ra test
            });
          },
          child: Icon(Icons.access_alarms),
        ),
      ),
    );
  }
}
