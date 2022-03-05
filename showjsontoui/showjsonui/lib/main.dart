import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:showjsonui/album_model.dart';
import 'package:showjsonui/data_api.dart';
import 'package:showjsonui/fetch_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String>? dataForUi;
  void _showUI() {
    fetchAlbum().then((dataRespone) {
      final text = dataRespone.body;
      final parse = dataFromJson(text);

      setState(
        () {
          dataForUi =
              parse.dataseries!.map((e) => e.timepoint.toString()).toList();
          print(dataForUi);
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLMV',
      home: Scaffold(
        appBar: AppBar(
          title: Text('aaa'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showUI();
          },
        ),
        body: Container(
          child: ListView.builder(
            itemCount: dataForUi?.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text('${dataForUi?[index]}'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
