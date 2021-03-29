import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    margin: EdgeInsets.only(top: 55),
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(21),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0.5,
                            color: Colors.black12,
                            offset: Offset(2.0, 1.0),
                            blurRadius: 3,
                          )
                        ]),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('images/miles.png'),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 74, bottom: 15, right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Miles home',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.pin_drop_outlined,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Miles home was build by xyz Private Limited, Located near the sea, 1kms away from the Airport ',
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 26.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.ac_unit,
                              color: Colors.black87,
                            ),
                            Icon(Icons.view_agenda, color: Colors.black26),
                            Icon(Icons.account_balance, color: Colors.black87),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, right: 12),
                        child: Text('Cost:92K',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
