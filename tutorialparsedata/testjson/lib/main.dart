import 'package:flutter/material.dart';

import 'package:testjson/bussines_api.dart';

import 'package:testjson/fetchdata.dart';

import 'model/album_api.dart';
import 'model/bussines_api.dart';
import 'model/titleserver_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('json'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            fetchBussiness().then((bussinessRespone) {
              final text = bussinessRespone.body;
              final parse = bussinessFromJson(text);
              print(parse.dataseries?[0].cloudcover);
            });
            fetchTitleServer().then((titleServerRespone) {
              final text = titleServerRespone.body;
              final parse = titleserverFromJson(text);
              print(parse.metadata?.addeddate);
            });
            fetchAlbum().then((albumRespone) {
              final text = albumRespone.body;
              final parse = albumFromJson(text);
              print(parse.venues?[0].id);
            });
          },
          child: Icon(Icons.ac_unit_outlined),
        ),
      ),
    );
  }
}
