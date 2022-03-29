import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';
import 'package:toystore/screen/mid_screen.dart/button_buy.dart';

class ToyButton extends StatelessWidget {
  const ToyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: paddingall, right: paddingall),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              '\$ 14.00',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            flex: 2,
            child: ButtonBuy(),
          ),
        ],
      ),
    );
  }
}
