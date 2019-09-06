import 'package:flutter/material.dart';

Widget horizontalScroll() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        _scrollCard(),
        _scrollCard(),
      ],
    ),
  );
}

Widget _scrollCard() {
  return Container(
    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
    decoration: BoxDecoration(
        color: Color(0xFF3c94ff), borderRadius: BorderRadius.circular(10)),
    width: 240,
    height: 124,
    child: Row(
      children: <Widget>[
        Container(
          width: 7,
          decoration: BoxDecoration(
              color: Color(0xFF66AAFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              )),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.info_outline,
                    color: Color(0xFFe7edfa),
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Shootoff Thingy',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    ' / Food',
                    style: TextStyle(color: Color(0xCCffffff)),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        cardCircle(),
                        cardCircle(),
                        cardCircle(),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      // margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: Color(0xFF90c3ff),
                        size: 25.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget cardCircle() {
  return Container(
    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Color(0xFF90c3ff),
      boxShadow: [
        BoxShadow(
            color: Colors.black,
            offset: Offset(0, 8),
            blurRadius: 15,
            spreadRadius: -5)
      ],
    ),
    height: 23,
    width: 23,
  );
}
