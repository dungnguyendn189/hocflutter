import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shouiui3/model/content_api.dart';
import 'package:shouiui3/model/fetch_content.dart';
import 'package:shouiui3/model/ui_model.dart';

void main() => runApp(
      MaterialApp(
        title: 'Show title in data',
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String>? contentShowUI;

  void _showUI() {
    fetchContentData().then((contentRespone) {
      final text = contentRespone.body;
      final parse = contentFromJson(text);

      setState(
        () {
          uiModel = parse
              .map((e) => UIModel(name: e.title, additionalInfo: e.author))
              .toList();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showUI();
        },
        child: Icon(Icons.play_arrow),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: uiModel.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text('${uiModel[index].name}'),
                Text('${uiModel[index].additionalInfo}'),
              ],
            );
          },
        ),
      ),
    );
  }
}
