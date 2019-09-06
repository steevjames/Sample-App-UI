import 'package:flutter/material.dart';

Widget mySpend(icon,name,time,price,color) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    padding: EdgeInsets.only(bottom: 10, top: 10),
    decoration: BoxDecoration(border: Border(bottom:BorderSide(width: .5, color: Color(0xFFaaaaaa)))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Image(
              image: AssetImage(icon),
              width: 40,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name),
                SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: TextStyle(color: Color(0xFF777777), fontSize: 12),
                ),
              ],
            )
          ],
        ),
        Text(price, style: TextStyle(color: Color(color), fontSize: 14),)
      ],
    ),
  );
}
