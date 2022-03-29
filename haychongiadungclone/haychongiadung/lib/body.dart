// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haychongiadung/allpage/final_title_button.dart';
import 'package:haychongiadung/allpage/headerwithsearch.dart';
import 'package:haychongiadung/allpage/recomended_card.dart';
import 'package:haychongiadung/value/contants.dart';

import 'allpage/featured_card.dart';
import 'allpage/titlewithcustomuderline.dart';

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWitchSearch(size: size),
          FinalTitleWithButton(text: 'Recommended', press: () {}),
          Row(
            children: [
              RecomendedCard(size: size),
            ],
          ),
          FinalTitleWithButton(
            text: 'Featured Plants',
            press: () {},
          ),
          FeaturedCard(size: size),
        ],
      ),
    );
  }
}
