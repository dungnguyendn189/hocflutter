import 'package:flutter/material.dart';
import 'package:haychongiadung/value/contants.dart';

class FeaturedCard extends StatefulWidget {
  const FeaturedCard({Key? key, required this.size}) : super(key: key);
  final size;

  @override
  State<FeaturedCard> createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<FeaturedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width * 0.8,
      height: 185,
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/na.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
