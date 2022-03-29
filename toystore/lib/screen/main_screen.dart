// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';
import 'package:toystore/scale_page.dart';
import 'package:toystore/screen/infoscreen/draw_info.dart';
import 'package:toystore/screen/infoscreen/info.dart';
import 'package:toystore/screen/mid_screen.dart/all_button_middle.dart';
import 'package:toystore/screen/mid_screen.dart/button_Store.dart';
import 'package:toystore/screen/mid_screen.dart/ratestar.dart';
import 'package:toystore/screen/mid_screen.dart/search_bar.dart';
import 'package:toystore/screen/mid_screen.dart/toy_button.dart';
import 'package:toystore/screen/mid_screen.dart/toy_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawInfo(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: kprimaryColor,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Info(),
                        ],
                      ),
                    ),
                  ),
                // ignore: prefer_const_constructors
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SearchBar(),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: paddingall * 4,
                      ),
                      Container(
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.only(
                          left: paddingall,
                        ),
                        child: Text(
                          'DCS Gammer',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: paddingall * 4,
                      ),
                      allButtonmidle(),
                      Padding(
                        padding: const EdgeInsets.all(paddingall),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ToyCard(),
                        ),
                      ),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: paddingall * 7,
                          ),
                          Center(
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/gow.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: paddingall,
                          ),
                          Text(
                            'God Of War 4',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: paddingall,
                          ),
                          Text(
                            '“Gameplay consists of frequent combat scenarios with characters punching and kicking or using their axe to slash/stab/impale enemies. Some larger enemies are opened up to intense finishing moves showing enemies being ripped apart, dismembered, or decapitated. Strong Language is used in the dialogue.',
                          ),
                          SizedBox(
                            height: paddingall,
                          ),
                          RateStar(),
                          ToyButton(),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
