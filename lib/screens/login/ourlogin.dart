import 'package:flutter/material.dart';

import './localWidget/formside/formSide.dart';
import './localWidget/imageside.dart';

class Ourlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: FormSide(),
          ),
          MediaQuery.of(context).size.width < 500
              ? Expanded(
                  flex: 0,
                  child: ImageSide(),
                )
              : Expanded(
                  flex: 2,
                  child: ImageSide(),
                ),
        ],
      ),
    );
  }
}
