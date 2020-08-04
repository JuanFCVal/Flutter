import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int starts;
  String descriptionPlace;
  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    final border_star = Container(
        margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0,
        ),
        child: Icon(
          Icons.star_border,
          color: Colors.amber,
          size: 18,
        ));
    final half_star = Container(
        margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0,
        ),
        child: Icon(
          Icons.star_half,
          color: Colors.amber,
          size: 18,
        ));
    final description = Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        descriptionPlace,
        style:
            TextStyle(color: Color.fromRGBO(86, 101, 115, 0.8), fontSize: 16),
        textAlign: TextAlign.left,
      ),
    );
    final star = Container(
        margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0,
        ),
        child: Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ));
    final title_stars = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          top: 320.0,
          left: 20.0,
          right: 20.0,
        ), //Crear un margen especifico
        child: Text(
          namePlace,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      Row(
        children: <Widget>[star, star, star, star, border_star],
      ),
    ]); //Se define como un row

    return Column(
      children: <Widget>[title_stars, description],
    );
  }
}
