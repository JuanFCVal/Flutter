import 'package:flutter/material.dart';

class GreenButtom extends StatefulWidget {
  @override
  _GreenButtomState createState() => _GreenButtomState();
}

class _GreenButtomState extends State<GreenButtom> {
  bool press = false;
  @override
  Widget build(BuildContext context) {
    void onPressedFav() {
      setState(() {
        press = !this.press;

        if (press == true) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Added to favorite'),
              duration: const Duration(seconds: 1),
            ),
          );
        } else {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Removed from favorites'),
              duration: const Duration(seconds: 1),
            ),
          );
        }
        ;
      });
    }

    return FloatingActionButton(
      backgroundColor: Colors.green,
      mini: true,
      tooltip: "Fav",
      onPressed: () => onPressedFav(),
      child: Icon(this.press ? Icons.favorite : Icons.favorite_border),
    );
  }
}
