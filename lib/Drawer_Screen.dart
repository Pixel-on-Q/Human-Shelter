import 'package:flutter/material.dart';
import 'config.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/naruto_chibi.jpg'),
                  backgroundColor: Colors.teal,
                ),
                SizedBox(width: 23),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text('Mr',
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ),
                SizedBox(width: 5),
                Text('Niko',
                    style: TextStyle(
                      fontSize: 23,
                    )),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: drawerItems
                  .map(
                    (element) => Row(
                      children: [
                        Icon(element['icon'], size: 35),
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          height: 56,
                        ),
                        Text(
                          element['title'],
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 198,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(children: [
                Icon(Icons.logout, color: Colors.orange, size: 24),
                SizedBox(
                  width: 14,
                ),
                Text('Logout',
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 18)),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
