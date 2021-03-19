import 'package:flutter/material.dart';

import 'CalendarWidgets/Events.dart';
import 'CalendarWidgets/TopCalendar.dart';
import 'DashboardWidgets/CalendarSection.dart';

class CalendarSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xffF7F7FF),
      width: _size.width,
      height: _size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopCalendar(),
          CalendarSection(),
          EventsSection(),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              "assets/images/logo.png",
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
          ),

          // ClipRRect(
          //   borderRadius: BorderRadius.circular(300.0),
          //   child: Image.asset(
          //     'assets/images/logo.png',
          //     height: 200.0,
          //     width: 400.0,
          //   ),
          // ),
        ],
      ),
    );
  }
}
