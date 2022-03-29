// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:haychongiadung/remomended_page.dart/info_title_page.dart';
import 'package:haychongiadung/value/contants.dart';

class RecomendedPage extends StatefulWidget {
  const RecomendedPage({Key? key}) : super(key: key);

  @override
  State<RecomendedPage> createState() => _RecomendedPageState();
}

class _RecomendedPageState extends State<RecomendedPage> {
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
                  child: infotitlepage(size: size),
                ),
                Positioned(
                  top: size.height * 0.6 - 40,
                  child: Container(
                    height: size.height,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 590,
                  child: Container(
                    padding: EdgeInsets.only(
                      right: 10,
                      left: 10,
                    ),
                    height: 300,
                    width: size.width,
                    child: Text(
                      'Xạo lồng ấu râm là tất cả các thuộc tính của thầy .\nnăm 11 tuổi đẩy bà già xuống ao , hiếp dâm con chó . chơi game ngu hay giản những đoạn thần chú lý thuyết ',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
