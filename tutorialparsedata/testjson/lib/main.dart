import 'package:flutter/material.dart';
import 'package:testjson/fetch_api.dart';
import 'package:testjson/info_model.dart';

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
            fetchData().then((dataResponse) {
              final text = dataResponse.body;
              final parse = infoFromJson(dataResponse);
            });
          },
          child: Icon(Icons.ac_unit_outlined),
        ),
      ),
    );
  }
}
