import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';

class AvatarInfo extends StatelessWidget {
  const AvatarInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 130,
        // ignore: prefer_const_constructors
        width: 130,
        margin: EdgeInsets.only(
          top: paddingall * 4,
        ),
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          image: DecorationImage(
              // ignore: prefer_const_constructors
              image: NetworkImage(
                'https://scontent.fdad2-1.fna.fbcdn.net/v/t1.18169-9/13138730_1044491228931298_1706823858963724963_n.jpg?stp=dst-jpg_s600x600&_nc_cat=101&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=QQv2pi1u9bMAX8A7Rh4&_nc_oc=AQmjQtjhwc5GbrIe4Thg20bTWfB0OKHAGFOAlFie5YD7R162qXAY2QQ9xpekVD4QRQ8&_nc_ht=scontent.fdad2-1.fna&oh=00_AT_a56xo49q0go-6f5htd2-LrIekB8dX4ETH6sC0g1gt1Q&oe=62663664',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(120),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.2,
              blurRadius: 30,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
