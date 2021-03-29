import 'package:flutter/material.dart';
import 'cards.dart';
import 'card1.dart';
import 'card2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double fScale = 1;
  bool isDrawerOpen = false;
  double select = 1.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      // decoration:
      //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(fScale)
        ..rotateY(isDrawerOpen ? 0.5 : 0.0),
      duration: Duration(milliseconds: 250),

      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(isDrawerOpen ? 15 : 0.0),
      ),

      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              fScale = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.menu, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              xOffset = 210;
                              yOffset = 105;
                              fScale = 0.8;
                              isDrawerOpen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text('Human Shelter',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Circular',
                              fontSize: 21)),
                      Row(children: [
                        Icon(Icons.location_city, color: Colors.black),
                        Text(
                          'Los Angeles',
                          style: TextStyle(color: Colors.black),
                        ),
                      ])
                    ],
                  ),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/naruto_chibi.jpg'),
                    ),
                    onTap: () {
                      setState(() {
                        xOffset = 180;
                        yOffset = 115;
                        fScale = 0.9;
                        isDrawerOpen = true;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(42)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 3.0,
                    spreadRadius: 0.5,
                  ), //BoxShadow

                  //border
                  // BoxShadow(
                  //   color: Colors.black,
                  //   offset: const Offset(0.0, 0.0),
                  //   blurRadius: 0.0,
                  //   spreadRadius: 0.0,
                  // ), //BoxShadow
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 23),
              child: Padding(
                padding: EdgeInsets.all(9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search, color: Colors.black),
                    Text('search for new home?',
                        style: TextStyle(color: Colors.black38, fontSize: 15)),
                    Icon(Icons.settings, color: Colors.black),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                              height: 29,
                              width: 29,
                              child: Image.asset('images/a.png')),
                          SizedBox(height: 5),
                          Text(
                            'Villa',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            height: 29,
                            width: 29,
                            child: Image.asset('images/c.png')),
                        SizedBox(height: 5),
                        Text(
                          'Cottage',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            height: 29,
                            width: 29,
                            child: Align(
                                child: Image.asset('images/building.png'))),
                        SizedBox(height: 5),
                        Text(
                          'Flat',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 52.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(42),
                        )),
                    height: 10,
                    width: 20,
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 7.0,
                  right: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Filter',
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                    SizedBox(width: 4),
                    Icon(
                      Icons.sort_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0),
            MyCard(),
            SizedBox(height: 8),
            Card1(),
            SizedBox(height: 8),
            Card2(),
            SizedBox(height: 8),
            MyCard(),
          ],
        ),
      ),
    );
  }
}
