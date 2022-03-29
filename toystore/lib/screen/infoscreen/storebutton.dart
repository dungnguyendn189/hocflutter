import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';

class ButtonStore extends StatelessWidget {
  const ButtonStore({
    Key? key,
    required this.iconButtons,
    required this.colorButton,
    required this.colorText,
    required this.nameStores,
  }) : super(key: key);
  final iconButtons;
  final String nameStores;
  final colorButton;
  final colorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: paddingall),
          decoration: BoxDecoration(
            color: colorButton,
            borderRadius: BorderRadius.circular(80),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              iconButtons,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: paddingall),
          child: TextButton(
            onPressed: () {},
            child: Text(
              '${nameStores}',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: colorText,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
