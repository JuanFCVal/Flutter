import 'package:flutter/material.dart';
import 'review.dart';

class Reviewlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Column(
      children: <Widget>[
        new Review(
            "https://www.pixelite.co.nz/content/images/size/w2000/2019/09/mateo-avila-chinchilla-x_8oJhYU31k-unsplash.jpg",
            "jodpan123",
            "1 comment 3 photos",
            "Great place to visit, awesome"),
        new Review(
            "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png",
            "user90812",
            "1 comment 0 photos",
            "Such a wonderful place"),
        new Review(
            "https://eslamoda.com/wp-content/uploads/sites/2/2018/12/para-perfil.png",
            "majo78162",
            "1 comment 5 photos",
            "Don't know how I came here, but love it."),
        new Review(
            "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png",
            "user112",
            "1 comment 3 photos",
            "This ´place sucks."),
      ],
    );
    return list;
  }
}
