import 'package:flutter/material.dart';

class TopCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      height: 60,
      padding: EdgeInsets.all(8),
      color: Color(0xffF7F7FF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              print(_size.width);
            },
            child: Container(
              child: Stack(
                children: [
                  new Icon(Icons.notifications),
                  new Positioned(
                    right: 0,
                    child: new Container(
                      padding: EdgeInsets.all(1),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: new Text(
                        '10',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: _size.width / 9,
            height: 30,
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 13),
              decoration: InputDecoration(
                hoverColor: Colors.blueAccent,
                hintText: "Search",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 12,
                ),
                prefixIcon: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 15,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                  10,
                )),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80',
                height: 30.0,
                width: 30.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
