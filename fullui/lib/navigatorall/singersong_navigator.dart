import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fullui/models/songandsinger.dart';
import 'package:google_fonts/google_fonts.dart';

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
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              singersong.singer,
              style: GoogleFonts.anton(
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  fontSize: 25),
            ),
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                height: 720,
                color: Colors.black,
                child: ListView.builder(
                    itemCount: allSongOfSinger.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          color: Colors.black,
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      allSongOfSinger[index].imgAsset),
                                ),
                                title: Text(
                                  allSongOfSinger[index].songName,
                                  style: GoogleFonts.anton(
                                      textStyle:
                                          TextStyle(color: Colors.white)),
                                ),
                                subtitle: Text(
                                  allSongOfSinger[index].singer,
                                  style: GoogleFonts.anton(
                                      textStyle:
                                          TextStyle(color: Colors.white)),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
          ),
        ),
      ),
    );
  }
}
