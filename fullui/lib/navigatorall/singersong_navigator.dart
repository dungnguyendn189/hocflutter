import 'package:flutter/material.dart';
import 'package:fullui/models/songandsinger.dart';

class SingerSong extends StatefulWidget {
  SingerSong({Key? key, this.singerID}) : super(key: key);
  final int? singerID;
  @override
  _SingerSongState createState() => _SingerSongState();
}

class _SingerSongState extends State<SingerSong> {
  @override
  Widget build(BuildContext context) {
    Singerlist singersong = singersList
        .firstWhere((element) => element.singerId == widget.singerID);
    List<Song> allSongOfSinger =
        song.where((element) => element.singer == singersong.singer).toList();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(singersong.singer),
        ),
      ),
    );
  }
}
