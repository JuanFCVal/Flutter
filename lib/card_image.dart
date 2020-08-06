import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 250,
      width: 300,
      margin: EdgeInsets.only(top: 90, left: 20.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://contactonews.co/storage/images/thumb-large-nassau-bahamas-banner_1920x1080.jpg"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0.0, 7.0))
          ]),
    );
    return card;
  }
}
