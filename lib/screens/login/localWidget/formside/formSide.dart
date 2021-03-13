import 'package:flutter/material.dart';

import './loginformfields.dart';
import './applogo.dart';

class FormSide extends StatelessWidget {
  final fromsideStartcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "tous les droits sont réservés",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ))
      ]),
    );
  }
}
