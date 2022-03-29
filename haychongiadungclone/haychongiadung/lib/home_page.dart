import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haychongiadung/body.dart';
import 'package:haychongiadung/value/contants.dart';

import 'allpage/bottom_navigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/menu.svg')),
        ),
        body: body(),
        bottomNavigationBar: BottomNavigator(),
      ),
    );
  }
}
