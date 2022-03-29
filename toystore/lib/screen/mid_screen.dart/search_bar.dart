import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';
import 'package:toystore/scale_page.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
          ),
        Expanded(
          flex: 2,
          child: Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(
              top: paddingall,
              left: paddingall,
            ),
            child: TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.notifications,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
