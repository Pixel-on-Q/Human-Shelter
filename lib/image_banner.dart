import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetpath;
  ImageBanner(this._assetpath);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Image.asset(
        _assetpath,
        fit: BoxFit.cover,
      ),
    );
  }
}
