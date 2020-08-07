import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 300,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(
              "https://contactonews.co/storage/images/thumb-large-nassau-bahamas-banner_1920x1080.jpg"),
          CardImage(
              "https://www.elcomercio.com/files/article_main/uploads/2020/01/28/5e3068ebd2064.jpeg"),
          CardImage(
              "https://miaventuraviajando.com/wp-content/uploads/2019/02/mejores-playas-ecuador-mi-aventura-viajando-13.jpg")
        ],
      ),
    );
  }
}
