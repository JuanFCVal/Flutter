import 'package:flutter/material.dart';
import 'package:FlutterUniversity/gradientback.dart';
import 'card_image_list.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new GradientBack("Main page"),
        new CardImageList(),
      ],
    );
  }
}
