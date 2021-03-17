import 'package:cowino/utiles/responsive.dart';
import 'package:flutter/material.dart';

import 'homepages/home_large_view.dart';
import 'homepages/home_medium_view.dart';
import 'homepages/home_small_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: HomeSmallView(),
      tablet: HomeMediumView(),
      desktop: HomeLargeView(),
    );
  }
}
