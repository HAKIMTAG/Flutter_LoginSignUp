import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({Key key, this.mobile, this.tablet, this.desktop})
      : super(key: key);

  //  this will Test typ of the device by counting the size of the screen
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 550;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 550 &&
      MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width < 550;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // if the width is more then 1100 we consider it as a desktop
        if (constraints.maxWidth >= 1100)
          return desktop;
        // if it is more then 650 and less then 1100 then it's a tablet
        else if (constraints.maxWidth >= 550) {
          return tablet;
          // if it is less then 650 we consider it as a mobile
        } else {
          return mobile;
        }
      },
    );
  }
}
