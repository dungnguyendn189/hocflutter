import 'package:flutter/material.dart';
import 'package:fullui/models/songandsinger.dart';

class MyPlayerCustom extends StatefulWidget {
  const MyPlayerCustom({Key? key, required int allsongID}) : super(key: key);

  @override
  _MyPlayerCustomState createState() => _MyPlayerCustomState();
}

class _MyPlayerCustomState extends State<MyPlayerCustom> {
  List<Song> allsongplay = song;
  int? index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(allsongplay[index!].songName)),
      ),
    );
  }
}
