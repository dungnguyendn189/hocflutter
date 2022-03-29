import 'package:flutter/material.dart';
import 'package:haychongiadung/allpage/titlewithcustomuderline.dart';
import 'package:haychongiadung/value/contants.dart';

class FinalTitleWithButton extends StatefulWidget {
  const FinalTitleWithButton(
      {Key? key, required this.text, required this.press})
      : super(key: key);
  final String text;
  final press;

  @override
  State<FinalTitleWithButton> createState() => _FinalTitleButtonState();
}

class _FinalTitleButtonState extends State<FinalTitleWithButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderLine(text: widget.text),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            color: kPrimaryColor,
            onPressed: widget.press,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
