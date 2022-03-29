// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cookapp/value/fontvalue.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: size.height * 1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/br2.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 1 / 3,
                  left: size.width * 1 / 4,
                  child: Container(
                    child: Text(
                      'Food Your Life',
                      style: FontApp.kprimaryText.copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                    top: size.height * 1 / 1.9,
                    right: size.width * 1 / 3,
                    child: Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                size: size,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Go Now !',
                          style: FontApp.kprimaryText.copyWith(
                              fontSize: 30,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
