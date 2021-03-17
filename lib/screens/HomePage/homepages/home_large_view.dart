import 'package:cowino/screens/HomePage/localWidgets/DashBoard/DashBoard.dart';
import 'package:cowino/screens/HomePage/localWidgets/menu/menu.dart';
//import 'package:cowino/screens/HomePage/localWidgets/right_side_menu.dart';
import 'package:flutter/material.dart';

class HomeLargeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 200,
            child: Menu(),
          ),
          Expanded(
            child: DashBoard(),
          ),
        ],
      ),
    );
  }
}
