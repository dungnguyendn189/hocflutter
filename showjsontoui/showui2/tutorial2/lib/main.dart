import 'package:flutter/material.dart';
import 'package:tutorial2/model/fetch_namedata.dart';
import 'package:tutorial2/model/nameData_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<String>? finalDataShowUI;
    void _showData() {
      fetchNameData().then(
        (nameDataRespone) {
          final text = nameDataRespone.body;
          final parse = nameFromJson(text);

          setState(
            () {
              finalDataShowUI =
                  parse.map((e) => e.name!.common.toString()).toList();
              print(finalDataShowUI?.length);
            },
          );
        },
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Json Bài 2'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showData();
          },
          child: Icon(Icons.abc_rounded),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: finalDataShowUI?.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text('${finalDataShowUI?[index]}'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
