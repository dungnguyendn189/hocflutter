// ignore_for_file: prefer_const_constructors

import 'package:adminpage/constants.dart';
import 'package:adminpage/responsive.dart';
import 'package:adminpage/screen/dashboard/header.dart';
import 'package:adminpage/screen/dashboard/my_fields.dart';
import 'package:adminpage/screen/dashboard/recent_files.dart';
import 'package:adminpage/screen/dashboard/storage_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Expanded(
                flex: 5,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    MyFiles(),
                    SizedBox(height: defaultPadding),
                    RecentFiles(),
                    if (Responsive.isMobile(context))
                      SizedBox(height: defaultPadding),
                    if (Responsive.isMobile(context)) StarageDetails(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                SizedBox(width: defaultPadding),
              // On Mobile means if the screen is less than 850 we dont want to show it
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: StarageDetails(),
                ),
            ],
          ),
        ],
      ),
    ));
  }
}
