import 'package:flutter/material.dart';

Widget goal(text1,text2,text3,percent) {

  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(text1),
            Text(
              text2,
              style: TextStyle(color: Color(0xFF777777), fontSize: 12),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: percent,
              child: Container(
                height: 5,
                decoration: BoxDecoration(color: Color(0xFF0047cc)),
              ),
            ),
            Expanded(
              flex: 100-percent,
              child: Container(
                height:5,
                decoration: BoxDecoration(color: Color(0xFFa6e8ff)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(text3),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFF0047cc))),
              child: Text('+ Record Payment'),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: .5,
          decoration: BoxDecoration(color: Color(0xFFaaaaaa)),
        ),
      ],
    ),
  );
}
