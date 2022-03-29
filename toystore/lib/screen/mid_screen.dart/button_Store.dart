import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';

class ButtonStore extends StatelessWidget {
  const ButtonStore({
    Key? key,
    required this.Textbutton,
    required this.colorText,
    required this.colorcontainer,
  }) : super(key: key);

  final String Textbutton;
  final colorcontainer;
  final colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: paddingall * 3,
      decoration: BoxDecoration(
        border: Border.all(
          color: colorcontainer,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          '${Textbutton}',
          style: TextStyle(
            color: colorText,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
