import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toystore/constact/value.dart';
import 'package:toystore/screen/infoscreen/avatar_info.dart';
import 'package:toystore/screen/infoscreen/storebutton.dart';
import 'package:toystore/screen/infoscreen/storeheader.dart';

class DrawInfo extends StatelessWidget {
  const DrawInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          AvatarInfo(),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StoreHeader(
                nameStore: '#Store',
                press: () {},
              ),
              ButtonStore(
                colorButton: fontPrimaryColor,
                colorText: Colors.white,
                iconButtons: Icons.lightbulb,
                nameStores: 'DSC Gamer',
              ),
              SizedBox(
                height: paddingall,
              ),
              ButtonStore(
                colorButton: backgroundItem,
                colorText: Colors.white,
                iconButtons: Icons.heart_broken_outlined,
                nameStores: 'Thế Giới Game',
              ),
              SizedBox(
                height: paddingall,
              ),
              ButtonStore(
                colorButton: backgroundItem,
                colorText: Colors.white,
                iconButtons: Icons.apple,
                nameStores: 'Thế Giới Game',
              ),
              SizedBox(
                height: paddingall * 3,
              ),
              StoreHeader(
                nameStore: '#Personal',
                press: () {},
              ),
              ButtonStore(
                colorButton: backgroundItem,
                colorText: Colors.white,
                iconButtons: Icons.stroller_rounded,
                nameStores: 'My Store',
              ),
              SizedBox(
                height: paddingall,
              ),
              ButtonStore(
                colorButton: backgroundItem,
                colorText: Colors.white,
                iconButtons: Icons.airplane_ticket,
                nameStores: 'Love Label',
              ),
              SizedBox(
                height: paddingall,
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/af.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
