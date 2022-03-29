import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';

class ButtonBuy extends StatelessWidget {
  const ButtonBuy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: paddingall,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: paddingall, vertical: paddingall / 1.2),
      decoration: BoxDecoration(
        color: fontPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            Icons.add_box_rounded,
          ),
          SizedBox(
            width: paddingall,
          ),
          Text(
            'Add Of Libery',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
