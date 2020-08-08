import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage =
      ("https://www.pixelite.co.nz/content/images/size/w2000/2019/09/mateo-avila-chinchilla-x_8oJhYU31k-unsplash.jpg");
  String name = "Peter Parker";
  String detail = "2 reviews 3 photos";
  String comment = "Un genial lugar para comer";
  Review(this.pathImage, this.name, this.detail, this.comment);
  @override
  Widget build(BuildContext context) {
    final photo = Container(
      child: CircleAvatar(
        backgroundImage: NetworkImage(pathImage),
        radius: 25.0,
      ),
      width: 40,
      height: 40,
      margin: EdgeInsets.only(top: 20, right: 10, left: 15, bottom: 20),
      alignment: Alignment.center,
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 15,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
    final star = Container(
        margin: EdgeInsets.only(
          //   top: 323.0,
          right: 3.0,
        ),
        child: Icon(
          Icons.star,
          color: Colors.amber,
          size: 13,
        ));

    final userInfo = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          left: 15,
          top: 4,
          bottom: 4,
          right: 8,
        ),
        child: Text(
          detail,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13,
            color: Colors.black,
          ),
        ),
      ),
      Row(
        children: <Widget>[star, star, star, star],
      ),
    ]);

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 15,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start, //Aliniar a la izquierda
      children: <Widget>[userName, userInfo, userComment],
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
