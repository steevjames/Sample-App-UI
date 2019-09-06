import 'package:flutter/material.dart';

Widget sectionTitle(t1, t2) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              t1,
              style: TextStyle(
                  color: Color(0xFF042c5c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
              size: 25.0,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              t2,
              style: TextStyle(color: Color(0xFF777777), fontSize: 15),
            )
          ],
        )
      ],
    ),
  );
}