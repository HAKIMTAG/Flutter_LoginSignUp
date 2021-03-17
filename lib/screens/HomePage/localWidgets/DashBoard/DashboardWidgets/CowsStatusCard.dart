import 'package:flutter/material.dart';

class CowsStatusCard extends StatefulWidget {
  final Color color;
  final Color progressIndicatorColor;
  final String projectName;
  final String percentComplete;
  final IconData icon;

  const CowsStatusCard(
      {Key key,
      this.color,
      this.progressIndicatorColor,
      this.projectName,
      this.percentComplete,
      this.icon})
      : super(key: key);

  @override
  _CowsStatusCardState createState() => _CowsStatusCardState();
}

class _CowsStatusCardState extends State<CowsStatusCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 275),
        height: hovered ? 160.0 : 155.0,
        width: hovered ? 200.0 : 195.0,
        decoration: BoxDecoration(
          color: hovered ? widget.color : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(width: 18),
                  // this the Icon inside the Card
                  Container(
                    height: 30.0,
                    width: 30.0,
                    child: Icon(
                      Icons.notifications,
                      color: !hovered ? Colors.white : Colors.black,
                      size: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(width: 13.0),
                  // this is the name of the Card
                  Container(
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                          color: hovered ? Colors.white : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  //this is the details icon in the conrner of the card
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Container(
                  //     height: 30.0,
                  //     width: 30.0,
                  //     child: Icon(
                  //       Icons.dehaze_outlined,
                  //       color: !hovered ? Colors.white : Colors.black,
                  //       size: 16.0,
                  //     ),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30.0),
                  //       color: hovered ? Colors.white : Colors.black,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Row for the image and number of the Card
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),

                  // number of Cows in ths Card

                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        "20",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: hovered ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 60.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cowbirthcard.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
