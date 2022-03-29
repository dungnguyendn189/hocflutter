import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
      required this.mobile,
      required this.desktop,
      required this.tablet})
      : super(key: key);
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 1300;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1584 &&
      MediaQuery.of(context).size.width >= 1300;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1584;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
