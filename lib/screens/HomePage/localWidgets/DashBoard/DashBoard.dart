import 'package:flutter/material.dart';

import 'CalendarSide.dart';
import 'DashboardWidgets/CowsStatusCard.dart';
import 'DashboardWidgets/NewAction.dart';
import 'DashboardWidgets/SubHeader.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      height: _size.height,
      color: Colors.white,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Expanded(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                      top: 25,
                    ),
                    child: Text(
                      "DASHBOARD",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  // container of the Cards
                  SizedBox(
                    child: Container(
                      margin: EdgeInsets.only(top: 5.0),
                      height: 165.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          CowsStatusCard(
                            color: Color(0xffFF4C60),
                          ),
                          SizedBox(width: 20),
                          CowsStatusCard(
                            color: Color(0xff6C6CE5),
                          ),
                          SizedBox(width: 20),
                          CowsStatusCard(
                            color: Color(0xffFAAA1E),
                          ),
                          SizedBox(width: 20),
                          CowsStatusCard(
                            color: Colors.teal[400],
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  SubHeader(
                    title: 'New Actions',
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        children: [
                          NewAction(),
                          NewAction(),
                          NewAction(),
                          NewAction(),
                          NewAction(),
                          NewAction(),
                          NewAction(),
                          NewAction(),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          // rifgt side widget
          Expanded(
            flex: 3,
            child: CalendarSide(),
          )
        ],
      ),
    );
  }
}
