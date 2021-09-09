import 'dart:developer';

import 'dart:math';
import 'dart:ui';

import 'package:english_words/english_words.dart';
import 'package:englishword/models/english_today.dart';
import 'package:englishword/packages/quote/qoute_model.dart';
import 'package:englishword/packages/quote/quote.dart';
import 'package:englishword/values/app_fonts.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  List<EnglishToDay> words = [];
  String quote = Quotes().getRandom().content!;

  List<int> fixedLIstRandom({int len = 1, int max = 120, int min = 1}) {
    if (len > max || len < min) {
      return [];
    }
    List<int> newList = [];
    Random random = Random();
    int count = 1;
    while (count <= len) {
      int val = random.nextInt(max);
      if (newList.contains(val)) {
        continue;
      } else {
        newList.add(val);
        count++;
      }
    }
    return newList;
  }

  getEnglishToday() {
    List<String> newList = [];
    List<int> rans = fixedLIstRandom(len: 5, max: nouns.length);
    rans.forEach((index) {
      newList.add(nouns[index]);
    });

    words = newList.map((e) => getQuote(e)).toList();
  }

  EnglishToDay getQuote(String noun) {
    Quote? quote;
    quote = Quotes().getByNoun(noun);
    return EnglishToDay(
      noun: noun,
      quote: quote?.content,
      id: quote?.id,
    );
  }

  @override
  void initState() {
    getEnglishToday();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink[400],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            setState(() {
              getEnglishToday();
            });
          },
          icon: Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Text(
          'EngLish To Day',
          style: AppFonts.h2.copyWith(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: size.height * 1 / 10,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  '$quote',
                  style: AppFonts.primaryFont.copyWith(fontSize: 18),
                ),
              ),
            ),
            Container(
              height: size.height * 2 / 3,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: words.length,
                  itemBuilder: (context, index) {
                    String firsLetter =
                        words[index].noun != null ? words[index].noun! : '';
                    firsLetter = firsLetter.substring(0, 1);
                    String lefLettter =
                        words[index].noun != null ? words[index].noun! : '';
                    lefLettter = lefLettter.substring(1, lefLettter.length);
                    String quoteDefault =
                        'Think of all the beauty still left around you and be happy . ';
                    String quote = words[index].quote != null
                        ? words[index].quote!
                        : quoteDefault;
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.pink[200],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(3, 6),
                            blurRadius: 6,
                          )
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/image_assets/heart1.png',
                              height: 100,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: RichText(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: firsLetter,
                                style: AppFonts.h3.copyWith(
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3, 6))
                                  ],
                                ),
                                children: [
                                  TextSpan(text: lefLettter),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 24, left: 10, right: 10),
                            child: Text(
                              '$quote',
                              style: AppFonts.primaryFont.copyWith(
                                  fontSize: 30,
                                  letterSpacing: 1,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 1 / 40,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return buildIndicator(index == _currentIndex, size);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 8,
      width: isActive ? size.width * 1 / 5 : 20,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white54,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(2, 3), blurRadius: 3)
          ]),
    );
  }
}
