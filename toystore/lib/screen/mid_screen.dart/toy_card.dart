import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';
import 'package:toystore/model/data_toy.dart';
import 'package:toystore/scale_page.dart';
import 'package:toystore/screen/mid_screen.dart/ratestar.dart';
import 'package:toystore/screen/mid_screen.dart/toy_button.dart';

class ToyCard extends StatelessWidget {
  const ToyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Responsive(
          mobile: GridviewButton(
            childAspecRatio: _size.width < 1300 ? 1 : 2,
            crossAsixcount: _size.width < 1300 ? 1 : 1,
          ),
          tablet: GridviewButton(
            childAspecRatio: 2,
            crossAsixcount: 1,
          ),
          desktop: GridviewButton(
              childAspecRatio: _size.width > 1584 ? 1 : 1,
              crossAsixcount: _size.width > 1584 ? 2 : 2),
        ),
      ],
    );
  }
}

class GridviewButton extends StatelessWidget {
  const GridviewButton(
      {Key? key, required this.childAspecRatio, required this.crossAsixcount})
      : super(key: key);
  final crossAsixcount;
  final childAspecRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: dataToy.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAsixcount,
          crossAxisSpacing: paddingall,
          mainAxisSpacing: paddingall,
          childAspectRatio: childAspecRatio,
        ),
        itemBuilder: (context, index) => CardToy(
              name: dataToy[index].name,
              pic: dataToy[index].pic,
            ));
  }
}

class CardToy extends StatelessWidget {
  const CardToy({Key? key, required this.name, required this.pic})
      : super(key: key);
  final name;
  final pic;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(pic), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          height: paddingall,
        ),
        Container(
          margin: EdgeInsets.only(left: paddingall),
          child: Text(
            name,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        SizedBox(
          height: paddingall,
        ),
        Container(margin: EdgeInsets.only(left: 10), child: RateStar()),
        SizedBox(
          height: paddingall,
        ),
        ToyButton(),
        SizedBox(
          height: paddingall,
        ),
      ],
    );
  }
}
