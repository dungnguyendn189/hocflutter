import 'package:flutter/material.dart';

class RateStar extends StatelessWidget {
  const RateStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Row(
            children: [
              Icon(Icons.star_outline_sharp),
              Icon(Icons.star_outline_sharp),
              Icon(Icons.star_outline_sharp),
              Icon(Icons.star_outline_sharp),
              Icon(Icons.star_outline_sharp),
            ],
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Row(
            children: [
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
