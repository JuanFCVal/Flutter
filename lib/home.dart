import 'package:FlutterUniversity/reviewlist.dart';
import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            new DescriptionPlace("Bahamas", 4,
                "Duis exercitation irure officia et officia labore aliquip do esse. Et aliqua velit enim ullamco aliquip adipisicing id consectetur aliqua. Nulla reprehenderit labore ex officia voluptate tempor cupidatat. Nisi adipisicing adipisicing aute dolore adipisicing laboris mollit excepteur excepteur enim culpa consectetur. Irure occaecat commodo proident sunt aliqua laborum deserunt proident et eiusmod. Labore sunt qui mollit ex excepteur velit. Nisi dolor ut laboris in."),
            new Reviewlist(),
          ],
        ),
        new Header(),
      ],
    );
  }
}
