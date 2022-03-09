import 'package:flutter/material.dart';

class AllDishesItemPage extends StatefulWidget {
  const AllDishesItemPage({Key? key}) : super(key: key);

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
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('aa'),
                      ),
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
