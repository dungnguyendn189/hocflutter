import 'package:cookapp/model/cook_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/fetchapi_cook.dart';

class Debug extends StatefulWidget {
  const Debug({Key? key}) : super(key: key);

  @override
  State<Debug> createState() => _DebugState();
}

class _DebugState extends State<Debug> {
  List<String>? test;
  void DebugShowUI() {
    fetchCookData().then(
      (cookDataRespone) {
        final text = cookDataRespone.body;
        final parse = cookdataFromJson(text);
        test = parse.meals?.map((e) => e.strMealThumb.toString()).toList();
        print(test);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          DebugShowUI();
        }),
        child: Icon(Icons.abc),
      ),
      body: Column(
        children: [
          Text(''),
        ],
      ),
    );
  }
}
