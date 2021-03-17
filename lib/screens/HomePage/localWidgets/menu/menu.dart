import 'package:flutter/material.dart';

import 'menuWidgets/menuItem.dart';
import 'menuWidgets/menuLogo.dart';
import 'menuWidgets/navBar.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: _size.height,
        width: _size.width,
        //width: 100.0,
        color: Color(0xff333951),
        child: Expanded(
          child: Container(
            width: _size.width,
            height: _size.height,
            child: ListView(children: [
              // logo Text
              MenuLogo(),
              SizedBox(
                height: _size.height / 10,
              ),
              NavBar(),
              SizedBox(
                height: _size.height / 9,
              ),
              NavBarItem(
                title: "Logout",
                icon: Icons.logout,
                active: false,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
