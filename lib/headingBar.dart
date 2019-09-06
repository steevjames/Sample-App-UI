import 'package:flutter/material.dart';

Widget headingBar() {
  return Container(
    padding: EdgeInsets.fromLTRB(16, 35, 16, 100),
    decoration: BoxDecoration(color: Color(0xFF0d50ce)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Profile Image
        Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/propic.jpg'),
            radius: 18,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFa3e5fe)),
        ),
        // Heading
        Text(
          'Overview',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        // Bell Icon
        Icon(
          Icons.notifications,
          color: Color(0xFFe7edfa),
          size: 25.0,
        )
      ],
    ),
  );
}
