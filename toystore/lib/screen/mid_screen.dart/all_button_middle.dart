import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';
import 'package:toystore/screen/mid_screen.dart/button_Store.dart';

class allButtonmidle extends StatelessWidget {
  const allButtonmidle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: paddingall),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables

        // ignore: prefer_const_literals_to_create_immutables

        children: [
          Expanded(
            flex: 1,
            child: ButtonStore(
              Textbutton: 'DCS Gamer',
              colorText: Colors.white,
              colorcontainer: Colors.white,
            ),
          ),
          SizedBox(
            width: paddingall,
          ),
          Expanded(
            flex: 1,
            child: ButtonStore(
              Textbutton: 'DCS Gamer Grandes',
              colorText: backgroundItem,
              colorcontainer: backgroundItem,
            ),
          ),
          SizedBox(
            width: paddingall,
          ),
          Expanded(
            flex: 1,
            child: ButtonStore(
              Textbutton: 'DCS Cognitivos',
              colorText: backgroundItem,
              colorcontainer: backgroundItem,
            ),
          ),
          SizedBox(
            width: paddingall,
          ),
          SizedBox(
            width: paddingall,
          ),
          Expanded(
            flex: 0,
            child: Container(
              child: TextButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Go >',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
