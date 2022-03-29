import 'dart:math';
import 'dart:ui';

import 'package:cookapp/model/cook_api.dart';
import 'package:cookapp/model/fetchapi_cook.dart';
import 'package:cookapp/value/fontvalue.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/fake_model.dart';
import 'alldishes_Item_page.dart';

class HomePage extends StatefulWidget {
  final size;
  const HomePage({Key? key, required this.size}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    fetchCookData().then(
      (cookDataRespone) {
        final text = cookDataRespone.body;
        final parse = cookdataFromJson(text);
        cookDataFake = parse.meals!
            .map((e) => CookDataFake(
                id: e.idMeal,
                picture: e.strMealThumb,
                Intructions: e.strInstructions,
                category: e.strCategory,
                name: e.strMeal))
            .toList();
      },
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(),
                SizedBox(
                  height: widget.size.height * 1 / 30,
                ),
                ButtonAllApp(),
                listAllApp(widget.size),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        'My Food Your Life',
        style: FontApp.kprimaryText.copyWith(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget ButtonAllApp() {
    return Container(
      padding: EdgeInsets.only(left: 5),
      alignment: Alignment.topLeft,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'All Dishes :',
          style: FontApp.secondText.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget listAllApp(Size size) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 250,
      width: size.width * 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cookDataFake.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllDishesItemPage(
                      imagePicture: cookDataFake[index].picture,
                      name: cookDataFake[index].name,
                      content: cookDataFake[index].Intructions),
                ),
              );
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      // ignore: prefer_const_constructors
                      image: DecorationImage(
                        // ignore: prefer_const_constructors
                        image: NetworkImage(
                          "${cookDataFake[index].picture}",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${cookDataFake[index].name}',
                          style: FontApp.kprimaryText.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${cookDataFake[index].category}',
                          style: FontApp.kprimaryText.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
