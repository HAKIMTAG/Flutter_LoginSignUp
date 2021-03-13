import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 55,
      backgroundColor: Colors.grey.shade100,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/images/logo.png'),
      ),
    );
  }
}
