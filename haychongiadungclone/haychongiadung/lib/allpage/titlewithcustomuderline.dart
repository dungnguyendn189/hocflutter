import 'package:flutter/material.dart';
import 'package:haychongiadung/value/contants.dart';

class TitleWithCustomUnderLine extends StatefulWidget {
  const TitleWithCustomUnderLine({Key? key, required this.text})
      : super(key: key);
  final String text;

  @override
  State<TitleWithCustomUnderLine> createState() => _State();
}

class _State extends State<TitleWithCustomUnderLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          // ignore: prefer_const_constructors
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            // ignore: prefer_const_constructors
            child: Text(
              widget.text,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
