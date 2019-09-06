import 'package:flutter/material.dart';

Widget buttonNav() {
  return BottomAppBar(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Image(image: AssetImage('assets/bottomnav/1.png'), width: 25,)
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Image(image: AssetImage('assets/bottomnav/2.png'), width: 25,)
        ),
        Transform.translate(
          offset: Offset(0, -25),
          child: Container(
              child: FloatingActionButton(
                backgroundColor: Color(0xFF0047CC),
                elevation: 0,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 25.0,
                ),
              )),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Image(image: AssetImage('assets/bottomnav/3.png'), width: 25,)
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Image(image: AssetImage('assets/bottomnav/4.png'), width: 25,)
        ),
      ],
    ),
  );
}
