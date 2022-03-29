import 'package:flutter/material.dart';

import '../value/contants.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/star1.png',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/like.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/user.png'),
          ),
        ],
      ),
    );
  }
}
