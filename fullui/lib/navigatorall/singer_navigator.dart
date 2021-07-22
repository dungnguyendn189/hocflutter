import 'package:flutter/material.dart';
import 'package:fullui/models/colorslist.dart';
import 'package:fullui/models/songandsinger.dart';
import 'package:fullui/navigatorall/singersong_navigator.dart';
import 'package:google_fonts/google_fonts.dart';

class SingerNavigator extends StatefulWidget {
  SingerNavigator({Key? key}) : super(key: key);
  List<Singerlist> allsinger = singersList;
  @override
  _SingerNavigatorState createState() => _SingerNavigatorState();
}

class _SingerNavigatorState extends State<SingerNavigator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Nghệ Sĩ',
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
                  itemCount: widget.allsinger.length,
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
                                backgroundImage: AssetImage(
                                    widget.allsinger[index].imageSingers),
                              ),
                              title: Text(
                                widget.allsinger[index].singer,
                                style: GoogleFonts.anton(
                                    textStyle: TextStyle(color: Colors.white)),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SingerSong(
                                              singerID:
                                                  singersList[index].singerId,
                                            )));
                              },
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
