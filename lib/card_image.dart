import 'package:FlutterUniversity/review.dart';
import 'package:flutter/material.dart';
import 'button_corazon.dart';

class CardImage extends StatelessWidget {
  String imageRoute =
      "https://contactonews.co/storage/images/thumb-large-nassau-bahamas-banner_1920x1080.jpg";
  CardImage(this.imageRoute);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(top: 90, left: 20.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imageRoute), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          // shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0.0, 7.0))
          ]),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        GreenButtom(),
      ],
    );
  }
}
