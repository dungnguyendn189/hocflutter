import 'package:clonetravelapp/contacts/metering.dart';
import 'package:clonetravelapp/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Stack(
          children: [
            Positioned(
              child: Container(
                height: size.height * 1,
                width: size.width * 1,
                color: Metering.kPrimary,
              ),
            ),
            Positioned(
              top: size.height * 0.2,
              left: size.width * 0.3 + 10,
              child: Container(
                alignment: Alignment.center,
                // ignore: prefer_const_constructors
                child: Text(
                  'Question ?',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.4,
              left: size.width * 0.2 + 10,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(size: size),
                    ),
                  );
                },
                // ignore: prefer_const_constructors
                child: Icon(
                  Icons.question_mark_rounded,
                  size: 200,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
