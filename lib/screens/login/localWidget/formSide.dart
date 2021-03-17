import 'package:flutter/material.dart';

import 'formside/loginformfields.dart';
import 'formside/applogo.dart';

class FormSide extends StatelessWidget {
  final fromsideStartcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _fontsize = _size.width < 350 ? 10 : 20;
    return Container(
      padding: EdgeInsets.all(20),
      child: Stack(children: [
        Positioned(
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: AppLogo(),
              ),
              SizedBox(
                height: 20.0,
              ),
              LoginFormFields(),
            ],
          ),
        ),
        Positioned(
            child: Align(
          alignment: FractionalOffset.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "COWDIV ",
                style:
                    TextStyle(fontSize: _fontsize, fontWeight: FontWeight.bold),
              ),
              Text(
                "tous les droits sont réservés",
                style:
                    TextStyle(fontSize: _fontsize, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ))
      ]),
    );
  }
}
