import 'package:flutter/material.dart';
import 'home.dart';
import 'searchPage.dart';
import 'ProfilePage.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int indexTaped = 0;
  final List<Widget> WidgetsChilndre = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTaped = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetsChilndre[indexTaped],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            currentIndex: indexTaped,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(""),
              )
            ],
          )),
    );
  }
}
