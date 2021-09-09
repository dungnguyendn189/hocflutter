import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle primaryFont = GoogleFonts.oswald(
    textStyle: TextStyle(color: Colors.white, fontSize: 10),
  );
  static TextStyle h1 = GoogleFonts.oswald(
    textStyle: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
  );
  static TextStyle h2 = GoogleFonts.oswald(
    textStyle: TextStyle(
        color: Colors.greenAccent[400],
        fontSize: 30,
        fontWeight: FontWeight.bold),
  );
  static TextStyle h3 = GoogleFonts.oswald(
    textStyle: TextStyle(
        color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold),
  );
}
