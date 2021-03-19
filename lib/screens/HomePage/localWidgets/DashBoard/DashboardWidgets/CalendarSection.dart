import 'package:cowino/screens/HomePage/localWidgets/DashBoard/CalendarWidgets/CalendarSlide.dart';
import 'package:flutter/material.dart';

class CalendarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Oct 2019',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 18.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_left,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      height: 18.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_right,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 25.0),
            child: Row(
              children: dates
                  .map(
                    (e) => CalendarSlide(
                      date: e,
                      day: days[dates.indexOf(e)],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
