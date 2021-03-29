import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(color: Colors.red[100]),
                ),
                Expanded(
                    child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 14, left: 14),
                          child: Column(
                            children: [
                              SizedBox(height: 72),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/naruto_chibi.jpg'),
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Austin Magazine (Review)',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SingleChildScrollView(
                                child: Container(
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18.0,
                  right: 16,
                  left: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.blue),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(
                        icon: Icon(Icons.share, color: Colors.blue),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Hero(
                  tag: 1,
                  child: Image.asset(
                    'images/tower.png',
                    height: 270,
                    width: 270,
                  ),
                ),
              ),
            ),
          ),
          Align(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Colors.blue[100],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: const Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 0.5,
                        ),
                      ]),
                  height: 120,
                  width: 460,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, top: 18, right: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Saint Joseph Tower',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(Icons.navigation_outlined,
                                color: Colors.black),
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('floor: 106',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('Mumbai',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.image, color: Colors.black),
                            SizedBox(
                              width: 7,
                            ),
                            Text('View More',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                ),
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    children: [
                      Container(
                        height: 73,
                        width: 73,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: -7,
                                  blurRadius: 6)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(52))),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 13),
                      Expanded(
                        child: Container(
                          height: 73,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(22)),
                          ),
                          child: Center(
                              child: Text(
                            'Book',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          )),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          //add above
        ],
      ),
    );
  }
}
