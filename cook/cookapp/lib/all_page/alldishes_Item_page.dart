import 'package:flutter/material.dart';

import '../value/fontvalue.dart';

class AllDishesItemPage extends StatefulWidget {
  const AllDishesItemPage(
      {Key? key,
      required this.content,
      required this.name,
      required this.imagePicture})
      : super(key: key);
  final imagePicture;
  final name;
  final content;
  @override
  State<AllDishesItemPage> createState() => _AllDishesItemPageState();
}

class _AllDishesItemPageState extends State<AllDishesItemPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          height: size.height * 1,
          width: size.width * 1,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.imagePicture),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50)),
                  ),
                ),
              ),
              Positioned(
                top: 370,
                child: Container(
                  child: Text(widget.name,
                      style: FontApp.secondText
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              Positioned(
                top: 400,
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 300,
                  width: 420,
                  child: Text(widget.content,
                      style: FontApp.kprimaryText
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
