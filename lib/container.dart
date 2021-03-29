import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  final Color _color;
  Cont(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: Center(
          child: Text(
        'Home Decor',
        style: TextStyle(fontSize: 23.0),
      )),
    );
  }
}
