import 'package:englishword/page/home_page.dart';
import 'package:englishword/values/app_fonts.dart';
import 'package:flutter/material.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'WellCome To First App',
                  style: AppFonts.h2.copyWith(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'EngLish',
                    style: AppFonts.h3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'Qoutes',
                      textAlign: TextAlign.right,
                      style: AppFonts.h2,
                    ),
                  ),
                ],
              )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: RawMaterialButton(
                  shape: CircleBorder(),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => HomePage()),
                        (route) => false);
                  },
                  child: Icon(
                    Icons.play_circle_outline,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
