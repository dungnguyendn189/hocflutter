import 'package:flutter/material.dart';
import 'package:fullui/models/colorslist.dart';
import 'package:fullui/models/songandsinger.dart';
import 'package:google_fonts/google_fonts.dart';

class songNavigator extends StatefulWidget {
  songNavigator({Key? key}) : super(key: key);
  List<Song> allSong = song;

  @override
  _songNavigatorState createState() => _songNavigatorState();
}

class _songNavigatorState extends State<songNavigator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Thánh Ca Công Giáo',
              style:
                  GoogleFonts.anton(textStyle: TextStyle(color: Colors.white)),
            ),
          ),
          elevation: 0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            height: 716,
            color: Colors.black,
            child: Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: ListView.builder(
                  itemCount: widget.allSong.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 20,
                      child: Container(
                        color: Colors.black,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(widget.allSong[index].imgAsset),
                              ),
                              title: Text(
                                widget.allSong[index].songName,
                                style: GoogleFonts.anton(
                                    textStyle: TextStyle(color: Colors.white)),
                              ),
                              subtitle: Text(
                                widget.allSong[index].singer,
                                style: GoogleFonts.anton(
                                    textStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        )),
      ),
    );
  }
}
