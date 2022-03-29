import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';

class StoreHeader extends StatelessWidget {
  const StoreHeader({
    Key? key,
    required this.nameStore,
    required this.press,
  }) : super(key: key);
  final String? nameStore;
  final press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: paddingall),
      child: Container(
        child: TextButton(
          onPressed: press,
          child: Text(
            '${nameStore}',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: fontPrimaryColor),
          ),
        ),
      ),
    );
  }
}
