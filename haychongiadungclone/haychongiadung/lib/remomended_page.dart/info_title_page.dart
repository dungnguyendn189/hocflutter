import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haychongiadung/value/contants.dart';

class infotitlepage extends StatelessWidget {
  const infotitlepage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      color: kPrimaryColor,
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Container(
            height: size.height * 0.5,
            width: size.width * 0.5,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -10),
                  blurRadius: 35,
                  color: kPrimaryColor.withOpacity(0.38),
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/na.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
          Spacer(),
          Container(
              margin: EdgeInsets.only(left: 4),
              height: size.height * 0.5 + 50,
              width: size.width * 0.45,
              color: kPrimaryColor,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thầy Dùi',
                    style: TextStyle(
                        fontSize: 30,
                        foreground: Paint()
                          ..style = PaintingStyle.fill
                          ..strokeWidth = 2
                          ..color = Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(color: Colors.white, height: 7),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Biệt Danh ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pô Sống Chó , Bậc Quịt , Ông tổ của lý thuyết',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' Rating Nhân Phẩm ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Đã nói là sông chó rồi',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'RateStart',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
