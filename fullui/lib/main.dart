import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fullui/models/colorslist.dart';
import 'package:fullui/models/songandsinger.dart';
import 'package:fullui/navigatorall/singer_navigator.dart';
import 'package:fullui/navigatorall/song_navigator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigatorall/player_navigator.dart';
import 'navigatorall/singersong_navigator.dart';

void main() => runApp(MaterialApp(
      title: 'Thánh Ca Công Giáo',
      debugShowCheckedModeBanner: false,
      home: ThanhCa(),
    ));

class ThanhCa extends StatefulWidget {
  const ThanhCa({Key? key}) : super(key: key);

  @override
  _ThanhCaState createState() => _ThanhCaState();
}

class _ThanhCaState extends State<ThanhCa> {
  final List<Singerlist> allSinger = singersList;
  final List<Song> allSong = song;

  get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Thánh Ca Công Giáo',
          style: GoogleFonts.anton(
            textStyle: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5),
            height: 716,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 240,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset('assets/photo/logon.jpg'),
                    ),
                  ), // <-- Hinh nen
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SingerNavigator()));
                            },
                            child: Text('Nghệ Sĩ ',
                                style: GoogleFonts.pacifico(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ],
                    ),
                  ), // <-- Nut Nghe Si
                  Column(
                    children: [
                      Container(
                        height: 180,
                        width: 450,
                        child: InkWell(
                          onTap: () {},
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: allSinger.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SingerSong(
                                                  singerID:
                                                      allSinger[index].singerId,
                                                )));
                                  },
                                  child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: 150,
                                      padding: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              allSinger[index].imageSingers),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          allSinger[index].singer,
                                          style: GoogleFonts.anton(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white)),
                                        ),
                                      )),
                                );
                              }),
                        ),
                      ),
                    ],
                  ), // Singer list
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => songNavigator()),
                              );
                            },
                            child: Text('Bài Hát ',
                                style: GoogleFonts.pacifico(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )))
                      ],
                    ),
                  ), // <- list bai hat
                  Column(
                    children: [
                      Container(
                        height: 160,
                        child: InkWell(
                          onTap: () {
                            print(Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyPlayerCustom(
                                        allsongID: song[index].songId))));
                          },
                          child: ListView.builder(
                              itemCount: allSong.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              allSong[index].imgAsset),
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Text(
                                            allSong[index].songName,
                                            style: GoogleFonts.alfaSlabOne(
                                                textStyle: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          Text(
                                            allSong[index].singer,
                                            style: GoogleFonts.alfaSlabOne(
                                                textStyle: TextStyle(
                                                    color: Colors.white)),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                );
                              }),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
