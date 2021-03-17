import 'package:cowino/screens/login/localWidget/formside/loginformfields.dart';
import 'package:flutter/material.dart';

import 'localWidget/formSide.dart';
import './localWidget/imageside.dart';

class Ourlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    if (_size.width > 700) {
      return Container(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: FormSide(),
            ),
            Expanded(
              flex: 2,
              child: ImageSide(),
            ),
          ],
        ),
      );
    } else {
      return FormSide();
    }
  }
}
