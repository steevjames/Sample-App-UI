import 'package:flutter/material.dart';
import './headingBar.dart';
import './horizontalScroll.dart';
import './bottomNav.dart';
import './goals.dart';
import './mySpends.dart';
import './sectionTitle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buttonNav(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Heading Bar
            headingBar(),
            // ScrollView
            Transform.translate(
              offset: Offset(0, -65),
              child: Column(
                children: <Widget>[
                  // Horizontal Scrolling
                  horizontalScroll(),
                  SizedBox(
                    height: 20,
                  ),
                  sectionTitle('My Goals', '+ADD A GOAL'),
                  goal('Buy Dream Bike', '65% Completed',
                      '₹1,60,000 more to go', 65),
                  goal('Amazon Echo', '85% Completed', '₹2,000 more to go', 85),
                  sectionTitle('My Spends', '+ADD A SPEND'),
                  mySpend('assets/spend/1.png', 'Flight Ticket',
                      'Today, 12:09PM', '- ₹4,564', 0xFFb32828),
                  mySpend('assets/spend/2.png', 'BigBasket', 'Aug 09, 03:45PM',
                      '- ₹389', 0xFFb32828),
                  mySpend('assets/spend/3.png', 'Swiggy', 'Aug 09, 1:03PM',
                      '- ₹223', 0xFFb32828),
                  mySpend('assets/spend/4.png', 'UPI Transfer',
                      'Aug 08, 09:34AM', '+ ₹5000', 0xFF5bb328),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


